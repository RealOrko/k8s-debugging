# k8s Debugging

Every had a problem where you are trying to debug infrastructure from a EKS cluster?

Well this is the answer! :)

## Assumptions

This repository assumes you are already up and running with k8s, specifically AWS EKS. You already have [kubectl](https://kubernetes.io/docs/tasks/tools/) installed and can connect. 

## Pre-requisites

Please install the following:

  - [direnv](https://direnv.net/docs/installation.html)

Run `direnv allow` in the checkout directory. 

## Up and running

`kdeploy`: To deploy the diagnostic container in your k8s cluster. 
`kdestroy`: To destroy the diagnostic container in your k8s cluster. 


## SSH into the container

To SSH into the container to start running diagnostics please run: 

`kshell`: This will give you a bash shell into the container. 
