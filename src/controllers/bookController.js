const BookModel = require("../models/book");
const getAllBooks = async (req, res) => {
  try {
    const { title, author, page = 1, limit = 10 } = req.query;
    const data = await BookModel.getAllBooks(title, author);
    res.json({
      data: data,
    });
  } catch (error) {
    res.status(500).json({
      message: "server error",
      serverMessage: error,
    });
  }
};

module.exports = {
  getAllBooks,
};
