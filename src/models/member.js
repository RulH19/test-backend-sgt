const serviceBook = require("../services/memberService");
const createNewMember = (data) => {
  return serviceBook.createNewMember(data);
};

module.exports = {
  createNewMember,
};
