
FROM public.ecr.aws/docker/library/python:3.10-alpine
WORKDIR /app
COPY /analytics/ /app
RUN pip install --no-cache-dir -r /app/requirements.txt

EXPOSE 5000
ENV DB_HOST="postgresql-service.default.svc.cluster.local"
ENV DB_PORT="5432"
ENV DB_USERNAME="postgres"
ENV DB_NAME="postgres"
ENV DB_PASSWORD="postgres"
# CMD python app.py
CMD /bin/sh -c "sleep 10000" 
