# Utiliza uma imagem leve e oficial do Node.js
FROM node:20-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia os arquivos de dependências para o container
COPY app/package*.json ./

# Instala apenas as dependências necessárias para produção
RUN npm install --only=production

# Copia o restante do código da aplicação
COPY app/ ./

# Expõe a porta que a aplicação utiliza
EXPOSE 3000

# Comando para iniciar a aplicação
CMD [ "npm", "start" ]
