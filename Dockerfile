FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/ ./app/
COPY service.yaml ./
COPY tests/ ./tests/
ENV PYTHONUNBUFFERED=1
ENV PORT=8407
EXPOSE 8407
CMD ["python", "-m", "app.main"]
