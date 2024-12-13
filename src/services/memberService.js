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

module.exports = {
  createNewMember,
};
