# Use a imagem oficial do Node.js
FROM node:latest

# Defina o diretório de trabalho
WORKDIR /usr/src/app

# Copie os arquivos package.json e package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos
COPY . .

# Exponha a porta da aplicação
EXPOSE 8082

# Comando para iniciar a aplicação
CMD ["npm", "start"]
