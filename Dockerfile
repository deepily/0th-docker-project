FROM python:3.7.6

RUN mkdir -p /var/docker-example

WORKDIR /var/docker-example

RUN pip install jupyter

COPY ./ /var/docker-example

# Diff between ENTRYPOINT & CMD?
# https://stackoverflow.com/questions/21553353/what-is-the-difference-between-cmd-and-entrypoint-in-a-dockerfile
# CMD jupyter notebook
# ENTRYPOINT python /var/docker-example/main.py

# From: https://stackoverflow.com/questions/49024624/how-to-dockerize-jupyter-lab
ENTRYPOINT ["jupyter", "notebook","--ip=0.0.0.0","--allow-root"]