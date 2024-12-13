require("dotenv").config();
const PORT = process.env.PORT || 4000;
const express = require("express");
const app = express();

const bookRoute = require("./routes/bookRoutes.js");
const memberRoute = require("./routes/memberRoutes.js");

app.use(express.json());
app.use("/api/books", bookRoute);
app.use("/api/members", memberRoute);

app.listen(PORT, () => {
  console.log(`Server berhasil dirunning di ${PORT}`);
});
