# Utiliser l'image de base Python 3.9
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY . .

# Installer les dépendances à partir du fichier requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Vérifier que pytest est bien installé en affichant sa version
RUN pytest --version

# Exécuter pytest lorsque le conteneur démarre
CMD ["python", "-m", "pytest"]

