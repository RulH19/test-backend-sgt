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

module.exports = {
  getAllBooks,
};
