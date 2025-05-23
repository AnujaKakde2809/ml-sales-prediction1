FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY train_model.py
RUN python train_model.py

COPY . .
EXPOSE 8080
CMD ["python", "app.py"]
