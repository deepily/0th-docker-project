FROM python:3.7.6

RUN mkdir -p /var/docker-example

WORKDIR /var/docker-example

RUN pip install jupyter

COPY ./ /var/docker-example

#ENTRYPOINT python /var/docker-example/main.py
#CMD jupyter notebook
ENTRYPOINT ["jupyter", "notebook","--ip=0.0.0.0","--allow-root"]
