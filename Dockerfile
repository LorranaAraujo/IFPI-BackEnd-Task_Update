FROM bitnami/python:3.10.4
WORKDIR /app

COPY . /app

# COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 8000
CMD python -m uvicorn index:app --host 0.0.0.0 --port 8000 --reload

