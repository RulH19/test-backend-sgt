const express = require("express");
const memberController = require("../controllers/memberController");
const router = express.Router();

router.post("/", memberController.createNewMember);
router.get("/:id/borrowings", memberController.getMemberBorrowings);
module.exports = router;
