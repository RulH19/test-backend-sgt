const serviceBook = require("../services/bookService");
const getAllBooks = (title, author) => {
  return serviceBook.getAllBooks(title, author);
};

const getBookById = (data) => {
  return serviceBook.getBookById(data);
};

const updateBookStock = (bookId, newStock) => {
  return serviceBook.updateBookStock(bookId, newStock);
};

module.exports = {
  getAllBooks,
  getBookById,
  updateBookStock,
};
