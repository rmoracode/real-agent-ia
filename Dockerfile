# Usamos la imagen oficial de Nginx basada en Alpine (pesa menos de 10MB)
FROM nginx:alpine

# Borramos los archivos por defecto que trae Nginx para que no haya conflictos
RUN rm -rf /usr/share/nginx/html/*

# Copiamos tu archivo index.html (la versión vanilla que hicimos) al servidor
COPY index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 80 para que Easypanel pueda dirigir el tráfico
EXPOSE 80

# Ejecutamos Nginx
CMD ["nginx", "-g", "daemon off;"]
