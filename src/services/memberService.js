const dbPool = require("../config/database");

const createNewMember = (body) => {
  const SQLQuery = `  INSERT INTO members (name, email, phone, address) 
                        VALUES (?, ?, ?, ?)`;
  return dbPool.execute(SQLQuery, [
    body.name,
    body.email,
    body.phone,
    body.address,
  ]);
};
const getMemberBorrowings = async (memberId, status, limit = 10, page = 1) => {
  let SQLQuery = ` SELECT * FROM borrowings WHERE member_id = ? `;
  if (status) {
    SQLQuery += ` AND status LIKE '%${status}%'`;
  }
  SQLQuery += ` LIMIT ${limit}`;
  const [rows] = await dbPool.execute(SQLQuery, [memberId]);
  return {
    data: rows,
    pagination: { status, page, limit },
  };
};
module.exports = {
  createNewMember,
  getMemberBorrowings,
};
