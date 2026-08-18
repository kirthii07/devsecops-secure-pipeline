FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN python -m pip install --upgrade pip==26.1.2 && \
    pip install --no-cache-dir -r requirements.txt

COPY app ./app

EXPOSE 5000

CMD ["python", "app/app.py"]
