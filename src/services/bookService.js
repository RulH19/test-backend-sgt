const dbPool = require("../config/database");

const getAllBooks = async (title, author, page = 1, limit = 10) => {
  let SQLQuery = "SELECT * FROM books WHERE 1=1";
  if (title) {
    SQLQuery += ` AND LOWER(title) LIKE LOWER('%${title}%')`;
  }
  if (author) {
    SQLQuery += ` AND LOWER(author) LIKE LOWER('%${author}%')`;
  }

  SQLQuery += ` LIMIT ${limit}`;
  const [rows] = await dbPool.execute(SQLQuery);
  const [[{ total }]] = await dbPool.execute(
    `SELECT COUNT(*) AS total FROM books WHERE 1=1`
  );
  return {
    data: rows,
    pagination: { total, page, limit, totalPages: Math.ceil(total / limit) },
  };
};
const getBookById = async (bookId) => {
  const SQLQuery = "SELECT * FROM books WHERE id = ?";
  const [rows] = await dbPool.execute(SQLQuery, [bookId]);
  return rows[0];
};

const updateBookStock = async (bookId, newStock) => {
  const SQLQuery = "UPDATE books SET stock = ? WHERE id = ?";
  return dbPool.execute(SQLQuery, [newStock, bookId]);
};
module.exports = {
  getAllBooks,
  getBookById,
  updateBookStock,
};
