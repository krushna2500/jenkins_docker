FROM poetry3.9.4 as base

WORKDIR /app

COPY pyproject.toml poetry.lock /app/

RUN poetry install

COPY . /app/

EXPOSE 8501

# ENTRYPOINT [ "streamlit" "run" ]

CMD [ "streamlit", "run", "app.py" ]
