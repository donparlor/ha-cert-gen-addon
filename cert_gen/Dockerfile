# On part d'une image Alpine toute simple
FROM alpine:latest

# Installe OpenSSL et (optionnel) zip/unzip si tu en as besoin
RUN apk add --no-cache openssl zip unzip

# Copie ton script d'exemple dans le conteneur
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Au démarrage de l'add-on, on exécute run.sh
CMD [ "/run.sh" ]