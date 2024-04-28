#Operating system:BASE IMAGE
FROM python:3.12
RUN pip install poetry
WORkDIR /code
COPY . /code/
RUN poetry config virtualenvs.create false
RUN poetry install
CMD ["poetry", "run", "uvicorn", "class1.main:app", "--host", "0.0.0.0"]