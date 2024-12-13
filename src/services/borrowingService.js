const dbPool = require("../config/database");

const createBorrowing = (body) => {
  const SQLQuery = `INSERT INTO borrowings (book_id, member_id, borrow_date, return_date, status) 
                    VALUES (?, ?, NOW(), NULL, ?)`;
  return dbPool.execute(SQLQuery, [body.book_id, body.member_id, "BORROWED"]);
};

const getMemberById = async (memberId) => {
  const SQLQuery = "SELECT * FROM borrowings WHERE member_id = ?";
  const [rows] = await dbPool.execute(SQLQuery, [memberId]);
  return rows;
};

const getBorrowingByBookId = async (id) => {
  const SQLQuery =
    "SELECT * FROM borrowings WHERE id = ? AND status = 'BORROWED'";
  const [rows] = await dbPool.execute(SQLQuery, [id]);
  return rows[0];
};

const updateBorrowingStatus = async (borrowingId, status) => {
  const SQLQuery =
    "UPDATE borrowings SET status = ?, return_date = NOW() WHERE id = ?";
  return dbPool.execute(SQLQuery, [status, borrowingId]);
};

module.exports = {
  createBorrowing,
  getMemberById,
  getBorrowingByBookId,
  updateBorrowingStatus,
};
