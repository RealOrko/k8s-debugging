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


## SSH into pod

To SSH into the pod fpr running diagnostics please run: 

`kshell`: This will give you a bash shell into the container. 

## What's available

  - [dnsutils](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L14)
    - [src](https://packages.ubuntu.com/focal/dnsutils)
  - [netcat](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L15)
    - [src](https://packages.ubuntu.com/focal/netcat)
  - [traceroute](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L16)
    - [src](https://packages.ubuntu.com/focal/traceroute)
  - [curl](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L17)
    - [src](https://packages.ubuntu.com/focal/curl)
  - [wget](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L18)
    - [src](https://packages.ubuntu.com/focal/wget)
  - [unzip](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L19)
    - [src](https://packages.ubuntu.com/focal/unzip)
  - [nano](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L20)
    - [src](https://packages.ubuntu.com/focal/nano)
  - [busybox](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L21)
    - [src](https://packages.ubuntu.com/focal/busybox)
  - [psmisc](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L22)
    - [src](https://packages.ubuntu.com/focal/psmisc)
  - [lynx](https://github.com/RealOrko/k8s-debugging/blob/13e10e09702937aa6b8df38b15a16f3881a0ff4b/Dockerfile#L29-L32)
    - [src](https://packages.ubuntu.com/focal/lynx)
