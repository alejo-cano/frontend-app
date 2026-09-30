const express = require('express');
const app = express();

// Cuando alguien entre a la página principal, responderá este mensaje
app.get('/', (req, res) => res.send('Hello from Node.js Frontend!'));

// La aplicación escuchará peticiones en el puerto 3000
app.listen(3000, () => console.log('App running on port 3000'));