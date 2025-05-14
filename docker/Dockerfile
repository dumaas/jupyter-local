# Use the official Jupyter image as base
FROM jupyter/datascience-notebook:latest AS base

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /work

# Pull packages from Artifactory
ARG PIP_INDEX_URL="FORGOTTEN"
RUN if [ "$PIP_INDEX_URL" = "FORGOTTEN" ]; \
    then \
        echo "PIP_INDEX_URL is required"; \
        exit 1; \
    fi

COPY requirements.txt /work/
RUN --mount=type=cache,target=/root/.cache pip install -r requirements.txt

FROM base AS development
