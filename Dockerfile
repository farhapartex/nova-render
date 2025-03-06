FROM python:3.10-slim

WORKDIR /app

COPY . /app/

RUN apt update && apt install -y --no-install-recommends ffmpeg
RUN rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "core.wsgi"]