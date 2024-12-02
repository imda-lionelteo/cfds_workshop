FROM python:3.12.7-slim-bullseye

LABEL name=dovbear

WORKDIR /app

COPY public ./public
COPY templates ./templates
COPY .gitignore ./.gitignore
COPY main.py ./
COPY requirements.txt ./
COPY run.sh ./
COPY utils.py ./

ENV PORT=3000
ENV INSTANCE_NAME=""
ENV INSTANCE_HASH=""

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE ${PORT}

ENTRYPOINT ["./run.sh"]

# docker pull lionelteo/dovbear-app:v1
# docker run -d -p 5001:5000 -e PORT=5000 -e INSTANCE_NAME="DOVBEAR-APP" -e INSTANCE_HASH="HASHNumber" --name app lionelteo/dovbear-app:v1