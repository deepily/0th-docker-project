## Yet Another Python Based Docker Toaster?

To invoke container: `docker container run --volume ~/PycharmProjects/0th-project:/var/docker-example --publish 127.0.0.1:8888:8888/tcp 0th-project:0.1`

`--volume` maps a local path to your container's internal file system.  Update your path
