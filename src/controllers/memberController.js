const MemberModel = require("../models/member");
const createNewMember = async (req, res) => {
  try {
    const { name, email, phone, address } = req.body;

    if (!name || !email || !phone || !address) {
      return res.status(400).json({ message: "All fields are required" });
    }
    const phoneRegex = /^[0-9]{10,15}$/;
    if (!phoneRegex.test(phone)) {
      return res.status(400).json({ message: "Phone must be valid format" });
    }
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
      return res.status(400).json({ message: "Email must be valid format" });
    }

    const body = { name, email, phone, address };
    const [result] = await MemberModel.createNewMember(body);
    res.json({
      message: "Add Member Success",
      data: {
        id: result.insertId,
        ...body,
      },
    });
  } catch (error) {
    res.status(500).json({
      message: "server error",
      serverMessage: error,
    });
  }
};
module.exports = {
  createNewMember,
};
