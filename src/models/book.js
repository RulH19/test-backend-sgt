const serviceBook = require("../services/bookService");
const getAllBooks = (title, author) => {
  return serviceBook.getAllBooks(title, author);
};
module.exports = {
  getAllBooks,
};
