# TSM Multi Instance with tsm-node chart

This directory has an example of deploying a multi instance TSM cluster with the tsm-node helm chart to a single kubernetes cluster.

Full documentation of the configuration can be found [here](https://builder-vault-tsm.docs.blockdaemon.com/docs/example-tsm-configuration-file).

## Helm Repository

```
helm repo add builder-vault https://blockdaemon.github.io/builder-vault-helm/
helm repo update
```

## Prerequisites
 - An EKS cluster deployed with the [AWS Loadbalancer Controller](https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html) installed and configured. 

The cluster deployed will look like this:

![TSM Cluster](assets/tsm-cluster.jpeg)


The values files (tsm<0-2>.yaml) have example configurations for deploying each node in a way that they can communicate with each other and provision ingress to the SDK port.

To deploy, you would perform 3 helm deployments:
```
helm install tsm0 blockdaemon/tsm-node --create-namespace -n tsm -f tsm0.yaml
helm install tsm1 blockdaemon/tsm-node --create-namespace -n tsm -f tsm1.yaml
helm install tsm2 blockdaemon/tsm-node --create-namespace -n tsm -f tsm2.yaml
```

