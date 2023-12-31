const express = require('express');
const axios = require('axios')

const app = express();
const port = 3001;

app.get('/', (req, res) => {
  res.send('<h1>Express Demo App</h1> <h4>Success Message: Application deployed via CodeDeploy.</h4> <p>Version: 1.4<p>');
});

app.get('/items', (req, res) => {
    axios.get('https://jsonplaceholder.typicode.com/users')
      .then(response => {
        res.send(response.data);
    })
      
})

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});
