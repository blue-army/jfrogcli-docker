# jfrogcli-docker
a docker image containing the jfrog cli.

Run the container with the following:

```bash
docker run --rm --name=jcli nullreference/jfrogcli-docker [arguments]
```

If certificates are required, mount your certificates into the /.jfrog/security as follows:

```bash
docker run --rm --name=jcli --mount type=bind,source="/host/certs",target=/.jfrog/security nullreference/jfrogcli-docker [arguments]
```

## todo

* add better support for configuration file (credentials, server url, etc..)
