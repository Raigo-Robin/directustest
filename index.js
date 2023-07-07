const http = require('http');

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello, Directus!');
});

const port = 8055;
server.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
