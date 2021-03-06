<p align="center">
  <img alt="K3D-Logo" src="https://raw.githubusercontent.com/pkeech/k3d-dev/main/docs/k3d-logo.png" width="400">
</p>

<p align="center">
  <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/pkeech/k3d-dev">
  <img alt="GitHub issues" src="https://img.shields.io/github/issues/pkeech/k3d-dev">
</p>

# K3D Development Environment

### Project Description

This project was created to demostrate how to use a local K3D cluster for development purposes. 

### Requirements

* [Docker](https://www.docker.com/)
* [K3D](https://k3d.io/)
* [Tilt](https://docs.tilt.dev/install.html)
* [Make](https://formulae.brew.sh/formula/make)

### Setup

1. Navigate to the root of the source repository
2. Pre-Stage local Docker Instance. 

    `make prep`
    
    **Warning**: This will purge all Docker Images, Volumes and Networks

3. Duplicate `Tiltfile.example` and rename it to `Tiltfile`
4. Modify `Tiltfile` to point to your development project
5. Add Static Hostfile Entry

  `127.0.0.1 example-app.k3d.localhost`

### Deployment

After completing the Setup steps, you can deploy a cluster by simply running the following command:

`make create-cluster`

Additionally, you can specify a unique name for your cluster if you have/want multiple K3D clusters. 

`make create-cluster -e clustername=myspecialname`

**Note**: Don't forget, if you specify a unique name for your cluster, you will have to specify the name for every command you run. 

```
make stop-cluster -e clustername=myspecialname
make restart-cluster -e clustername=myspecialname
make delete-cluster -e clustername=myspecialname
```

### Removal

You can destroy a cluster by simply running the following command:

`make delete-cluster`

### Temporarly Stopping the Cluster

One of the many benefits of K3D is the ability to start/stop a cluster as and when needed. To accomplish that with this makefile run the following commands:

**Note**: To stop your cluster, you will need to `ctrl` + `c` to stop tilt from running. During the restart, Tilt will automatically be started again.

```
## STOP CLUSTER
make stop-cluster

## RESTART CLUSTER
make restart-cluster
```

### Example Application & Your Applications

By running the commands 

### Multi-Cluster Support

*placeholder*

### Shout Outs & References

This project was created using a combination of source documentation and the repo provided by [iwilltry42](https://github.com/iwilltry42/k3d-demo). It was then modified to suit my needs and can be modified to suit your needs.
