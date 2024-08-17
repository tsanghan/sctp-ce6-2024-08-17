ARG PYTHON_VERSION=3.10.5
FROM python:${PYTHON_VERSION}-slim as base

WORKDIR /app

COPY . .

# Install dependencies
RUN python -m pip install -r requirements.txt

ENV APP_PORT=8080

# Expose the port that the application listens on.
EXPOSE ${APP_PORT}

# Run the application.
CMD python app.py
