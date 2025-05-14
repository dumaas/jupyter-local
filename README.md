# 🧪 Jupyter Notebook Playground

This repository is a personal Jupyter notebook playground. It provides a portable and consistent environment to write and run Python notebooks locally using Docker and JupyterLab, with dependencies managed via `requirements.txt`.

---

## 🚀 Quickstart

### ✅ Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [`make`](https://formulae.brew.sh/formula/make)

---

### 📦 Build & Start

```bash
# Build the Docker image and start the container
make bootstrap
```

Once the container is running, access JupyterLab at: [http://localhost:8888](http://localhost:8888)

---

## 🔧 Customizing

### Install New Packages

1. Add the package(s) to `requirements.txt`
2. Rebuild the Docker image:

```bash
make build
```

---

## 🐳 Makefile Commands

All commands use `docker/docker-compose.yaml` as the config file via the `-f` flag.

| Command          | Description                                           |
|------------------|-------------------------------------------------------|
| `make bootstrap` | Rebuilds the image and brings up the container        |
| `make build`     | Removes old container and builds the image            |
| `make up`        | Starts the container in detached mode                 |
| `make logs`      | Streams container logs (and starts it if not running) |
| `make down`      | Stops and removes the container and orphan networks   |
| `make bash`      | Opens an interactive bash session in the container    |
| `make ecr-login` | Logs in to AWS ECR                                    |

---

## 🧠 Troubleshooting

- **Notebooks not showing up?**
  - Ensure `./notebooks` exists and is correctly volume-mounted in `docker-compose.yaml`.
- **Permission denied when saving?**
  - Check host directory permissions and make sure the directory isn't owned by root.
- **SSL Errors during build?**
  - Avoid unnecessary `apt-get` usage unless needed. Let the base Jupyter image handle most system deps.
- **Changes not applying after rebuild?**
  - Use `make build` to force a full rebuild with cache busting.

---

## 📄 License

MIT — free to use, modify, and extend.
