# 1. Usa una imagen oficial de Node.js versión 18 liviana
FROM node:18-alpine

# 2. Define la carpeta dentro del contenedor donde se guardará todo
WORKDIR /app

# 3. Copia los archivos que indican qué librerías necesita la app
COPY package*.json ./

# 4. Instala las librerías dentro del contenedor
RUN npm install

# 5. Copia todo el resto de tu código
COPY . .

# 6. Informa que la app usará el puerto 3000
EXPOSE 3000

# 7. Define el comando que arrancará la app al encender el contenedor
CMD ["node", "index.js"]