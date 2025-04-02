# Use uma imagem oficial do Node.js como base
FROM node:18

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos do projeto para o contêiner
COPY . .

# Instale as dependências
RUN npm ci

# Instale as dependências
RUN npm install

# Execute o build do Vite
RUN npm run build

# Exponha a porta que a aplicação vai rodar
EXPOSE 4173

# Comando para rodar a aplicação em produção
CMD ["npm", "run", "preview"]
