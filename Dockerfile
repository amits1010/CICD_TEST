from python:3.9-slim

WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "python3", "main.py" ]
