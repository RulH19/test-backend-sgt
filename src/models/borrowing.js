const serviceBorrowing = require("../services/borrowingService");

const createBorrowing = (data) => {
  return serviceBorrowing.createBorrowing(data);
};

const getMemberById = (data) => {
  return serviceBorrowing.getMemberById(data);
};

const getBorrowingByBookId = (data) => {
  return serviceBorrowing.getBorrowingByBookId(data);
};

const updateBorrowingStatus = (borrowingId, status) => {
  return serviceBorrowing.updateBorrowingStatus(borrowingId, status);
};

module.exports = {
  createBorrowing,
  getMemberById,
  getBorrowingByBookId,
  updateBorrowingStatus,
};
