const express = require("express");
const BorrowingController = require("../controllers/borrowingController");
const router = express.Router();

router.post("/", BorrowingController.createBorrowing);
router.put("/:id/return", BorrowingController.returnBook);
module.exports = router;
