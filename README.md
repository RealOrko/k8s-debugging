# k8s Debugging

Every had a problem where you are trying to debug infrastructure from a EKS cluster?

Well this is the answer! :)

## Assumptions

This repository assumes you are already up and running with k8s, specifically AWS EKS. You already have [kubectl](https://kubernetes.io/docs/tasks/tools/) installed and can connect. 

## Pre-requisites

Please install the following:

  - [direnv](https://direnv.net/docs/installation.html)

Run `direnv allow` in the checkout directory. 

## Cloning the repo

To clone and activate the repo, please run the following:

```
git clone git@github.com:RealOrko/k8s-debugging.git && cd k8s-debugging && direnv allow
```

## Up and running

  - `kdeploy`: To deploy the diagnostic container in your k8s cluster. 
  - `kdestroy`: To destroy the diagnostic container in your k8s cluster. 


## SSH into the container

To SSH into the container to start running diagnostics please run: 

`kshell`: This will give you a bash shell into the container. 

## What's available

  - [dnsutils](https://github.com/RealOrko/k8s-debugging/blob/3cc3e81bdd8768664117ec5e6e07db9757275f66/Dockerfile#L7)
  - [netcat](https://github.com/RealOrko/k8s-debugging/blob/3cc3e81bdd8768664117ec5e6e07db9757275f66/Dockerfile#L8)
  - [traceroute](https://github.com/RealOrko/k8s-debugging/blob/3cc3e81bdd8768664117ec5e6e07db9757275f66/Dockerfile#L9)
  - [curl](https://github.com/RealOrko/k8s-debugging/blob/3cc3e81bdd8768664117ec5e6e07db9757275f66/Dockerfile#L10)
  - [wget](https://github.com/RealOrko/k8s-debugging/blob/3cc3e81bdd8768664117ec5e6e07db9757275f66/Dockerfile#L11)
  - [unzip](https://github.com/RealOrko/k8s-debugging/blob/3cc3e81bdd8768664117ec5e6e07db9757275f66/Dockerfile#L12)
  - [lynx](https://github.com/RealOrko/k8s-debugging/blob/3cc3e81bdd8768664117ec5e6e07db9757275f66/Dockerfile#L13)
