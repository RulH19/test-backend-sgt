const serviceBook = require("../services/memberService");
const createNewMember = (data) => {
  return serviceBook.createNewMember(data);
};
const getMemberBorrowings = (data, status) => {
  return serviceBook.getMemberBorrowings(data, status);
};
module.exports = {
  createNewMember,
  getMemberBorrowings,
};
