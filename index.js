// create server and api using express

const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    console.log('Hello World');
    res.send('Hello World!');
    }
);

app.get('/health', (req, res) => {
    console.log('checking health');
    res.status(200).send('OK');
  });

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
    }
);