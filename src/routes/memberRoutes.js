const express = require("express");
const memberController = require("../controllers/memberController");
const router = express.Router();

router.post("/", memberController.createNewMember);
module.exports = router;
