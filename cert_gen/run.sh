#!/usr/bin/ash
echo "Starting cert_gen add-on..."

# Juste pour vérifier qu'on est dans le conteneur
openssl version

# Exécution du script de génération
if [ -f /config/scripts/generate_p12_and_cer.sh ]; then
  echo "Running generate_p12_and_cer.sh..."
  bash /config/scripts/generate_p12_and_cer.sh
fi

# Exécution du script de compression
if [ -f /config/scripts/compress_certificate.sh ]; then
  echo "Running compress_certificate.sh..."
  bash /config/scripts/compress_certificate.sh
fi

echo "All done! Keeping container alive..."
tail -f /dev/null
