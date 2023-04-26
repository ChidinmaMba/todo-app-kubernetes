FROM --platform=linux/amd64 python:3.9-slim-buster
RUN mkdir /app
WORKDIR /app
COPY todo-app-source-code /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["python","-u", "app.py"]