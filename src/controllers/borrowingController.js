const BorrowingModel = require("../models/borrowing");
const BookModel = require("../models/book");
const createBorrowing = async (req, res) => {
  try {
    const { book_id, member_id } = req.body;
    const member = await BorrowingModel.getMemberById(member_id);
    if (member.length > 2) {
      return res
        .status(400)
        .json({ message: "Member cannot borrow more than 3 books" });
    }

    const book = await BookModel.getBookById(book_id);
    if (!book) {
      return res.status(404).json({ message: "Book not found" });
    }
    if (book.stock <= 0) {
      return res.status(400).json({ message: "Book out of stock" });
    }

    await BookModel.updateBookStock(book_id, book.stock - 1);

    const borrowingData = { book_id, member_id };
    await BorrowingModel.createBorrowing(borrowingData);
    res.json({
      message: "Borrowing created successfully",
      data: borrowingData,
    });
  } catch (error) {
    res.status(500).json({
      message: "server error",
      serverMessage: error.message,
    });
  }
};

const returnBook = async (req, res) => {
  try {
    const { id } = req.params;

    if (!id) {
      return res.status(404).json({ message: "id is required" });
    }

    const borrowing = await BorrowingModel.getBorrowingByBookId(id);
    if (!borrowing || borrowing.status !== "BORROWED") {
      return res
        .status(400)
        .json({ message: "Book is not currently borrowed" });
    }

    const book = await BookModel.getBookById(borrowing.book_id);
    if (!book) {
      return res.status(404).json({ message: "Book not found" });
    }
    await BookModel.updateBookStock(borrowing.book_id, book.stock + 1);
    await BorrowingModel.updateBorrowingStatus(id, "RETURNED");

    res.json({
      message: "Book returned successfully",
      data: {
        id,
        book_id: borrowing.book_id,
        status: "RETURNED",
      },
    });
  } catch (error) {
    res.status(500).json({
      message: "Server error",
      serverMessage: error,
    });
  }
};
module.exports = {
  createBorrowing,
  returnBook,
};
