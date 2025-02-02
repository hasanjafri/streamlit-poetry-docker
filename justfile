help:
    @just --list --justfile {{ justfile() }}

build-streamlit:
    docker build -t streamlit .

run-streamlit:
    docker run -p 8501:8501 streamlit

run-flask:
    poetry run python flask/server.py