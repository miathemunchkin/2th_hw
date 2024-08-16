FROM python:3.10-slim

WORKDIR /usr/src/app

COPY goit-algo-hw-04.py . 
COPY salary_file.txt . 
COPY cats_file.txt . 
COPY Pipfile .          
COPY Pipfile.lock .

RUN pip install pipenv && pipenv install --deploy --ignore-pipfile

CMD ["pipenv", "run", "python", "goit-algo-hw-04.py"] 
