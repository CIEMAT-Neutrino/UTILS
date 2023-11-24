# BUILD IMAGE & RUN
```bash
docker build -t scint .
docker images
docker run -it scint /bin/bash
```

# UPLOAD IMAGE
```bash
docker tag myimage:latest myusername/myrepo:v1.0
docker login
docker push myusername/myrepo:v1.0
```

# DOWNLOAD IMAGE
```bash
docker pull myusername/myrepo:v1.0
docker run -p 8888:8888 -it scint /bin/bash
```
or

```bash
apptainer pull docker://myrepo:v1.0
apptainer run --home=/whatever/path/you/want scint_v0.0.sif bash
```

# REMOVE IMAGE (BE CAREFUL)
```bash
docker image prune -a
docker rmi -f ID
docker container prune
```

# RUN JUPYTER INSIDE CONTAINER
```bash
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token='' --NotebookApp.password='' --no-browser --NotebookApp.allow_origin='*'
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root and copy the token of the server to use it in the browser/local
```