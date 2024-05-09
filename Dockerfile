
FROM python:3.9-slim
WORKDIR /app
COPY /analytics/ /app
RUN pip install --no-cache-dir -r /app/requirements.txt

EXPOSE 5000
ENV NAME World
ENV DB_HOST="postgresql-service.default.svc.cluster.local"
ENV DB_PORT="5432"
ENV DB_USERNAME="postgres"
ENV DB_NAME="postgres"
ENV DB_PASSWORD="postgres"
CMD python app.py
# CMD /bin/sh -c "sleep 10000" 
