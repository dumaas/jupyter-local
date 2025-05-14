# Use the official Jupyter image as base
FROM jupyter/datascience-notebook:latest AS base

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /work

# Pull packages from Artifactory
ARG PIP_INDEX_URL=""
COPY requirements.txt /work/
RUN --mount=type=cache,target=/root/.cache pip install -r requirements.txt

FROM base AS development
