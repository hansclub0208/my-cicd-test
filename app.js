const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('Hello World! My First CI/CD Pipeline!');
});

app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});
