const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const ENV = process.env.NODE_ENV || 'development';

app.get('/', (req, res) => {
    res.json({
        message: "Pipeline GitOps funcionando com sucesso!",
        environment: ENV,
        status: "Online"
    });
});

app.get('/health', (req, res) => {
    res.status(200).send('OK');
});

app.listen(PORT, () => {
    console.log(`Aplicação rodando na porta ${PORT} no ambiente de ${ENV}`);
});
