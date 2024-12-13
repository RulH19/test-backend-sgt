require("dotenv").config();
const PORT = process.env.PORT || 4000;
const express = require("express");
const app = express();

const bookRoute = require("./routes/bookRoutes.js");

app.use(express.json());
app.use("/api/books", bookRoute);

app.listen(PORT, () => {
  console.log(`Server berhasil dirunning di ${PORT}`);
});
