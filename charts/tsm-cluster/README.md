# tsm-cluster

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 61.0.2](https://img.shields.io/badge/AppVersion-61.0.2-informational?style=flat-square)

A Helm chart to deploy a set of Blockdaemon TSM nodes to kubernetes. It can be used as is, or as inpriation to create your own "umbrella" chart that uses tsm-node as a dependency.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Blockdaemon | <sre@blockdaemon.com> |  |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://blockdaemon.github.io/builder-vault-helm/ | tsm0(tsm-node) | 0.1.2 |
| https://blockdaemon.github.io/builder-vault-helm/ | tsm1(tsm-node) | 0.1.2 |
| https://blockdaemon.github.io/builder-vault-helm/ | tsm2(tsm-node) | 0.1.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.hosts[0].paths[0].serviceName | string | `""` |  |
| ingress.hosts[0].paths[0].servicePort | int | `8080` |  |
| ingress.tls | list | `[]` |  |
| tsm0.affinity | object | `{}` |  |
| tsm0.config.configFile | string | `""` | the TSM configuration file that will be mounted into the TSM node.  MUTUALLY EXCLUSIVE with configSecretName |
| tsm0.config.configSecretName | string | `""` | The name of the secret containing the TSM configuration file. MUTUALLY EXCLUSIVE with configFile |
| tsm0.fullnameOverride | string | `""` |  |
| tsm0.image.pullPolicy | string | `"IfNotPresent"` |  |
| tsm0.image.repository | string | `""` | Image to use for deploying the TSM node |
| tsm0.image.tag | string | `""` |  |
| tsm0.imagePullSecrets | list | `[]` |  |
| tsm0.index | int | `0` |  |
| tsm0.ingress.enabled | bool | `false` |  |
| tsm0.mpcService | object | `{}` | Optional. Only used for flexibility to expose the mpc port outside of the cluster. |
| tsm0.nameOverride | string | `""` |  |
| tsm0.nodeSelector | object | `{}` |  |
| tsm0.podAnnotations | object | `{}` |  |
| tsm0.podLabels | object | `{}` |  |
| tsm0.podSecurityContext | object | `{}` |  |
| tsm0.replicaCount | int | `1` |  |
| tsm0.resources | object | `{}` |  |
| tsm0.sdkService | object | `{"type":"ClusterIP"}` | The primary service definition for the TSM node |
| tsm0.securityContext | object | `{}` |  |
| tsm0.serviceAccount.annotations | object | `{}` |  |
| tsm0.serviceAccount.automount | bool | `true` |  |
| tsm0.serviceAccount.create | bool | `true` |  |
| tsm0.serviceAccount.name | string | `""` |  |
| tsm0.tolerations | list | `[]` |  |
| tsm0.volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| tsm0.volumes | list | `[]` | Additional volumes on the output Deployment definition. |
| tsm1.affinity | object | `{}` |  |
| tsm1.config.configFile | string | `""` | the TSM configuration file that will be mounted into the TSM node.  MUTUALLY EXCLUSIVE with configSecretName |
| tsm1.config.configSecretName | string | `""` | The name of the secret containing the TSM configuration file. MUTUALLY EXCLUSIVE with configFile |
| tsm1.fullnameOverride | string | `""` |  |
| tsm1.image.pullPolicy | string | `"IfNotPresent"` |  |
| tsm1.image.repository | string | `""` | Image to use for deploying the TSM node |
| tsm1.image.tag | string | `""` |  |
| tsm1.imagePullSecrets | list | `[]` |  |
| tsm1.index | int | `1` |  |
| tsm1.ingress.enabled | bool | `false` |  |
| tsm1.mpcService | object | `{}` | Optional. Only used for flexibility to expose the mpc port outside of the cluster. |
| tsm1.nameOverride | string | `""` |  |
| tsm1.nodeSelector | object | `{}` |  |
| tsm1.podAnnotations | object | `{}` |  |
| tsm1.podLabels | object | `{}` |  |
| tsm1.podSecurityContext | object | `{}` |  |
| tsm1.replicaCount | int | `1` |  |
| tsm1.resources | object | `{}` |  |
| tsm1.sdkService | object | `{"type":"ClusterIP"}` | The primary service definition for the TSM node |
| tsm1.securityContext | object | `{}` |  |
| tsm1.serviceAccount.annotations | object | `{}` |  |
| tsm1.serviceAccount.automount | bool | `true` |  |
| tsm1.serviceAccount.create | bool | `true` |  |
| tsm1.serviceAccount.name | string | `""` |  |
| tsm1.tolerations | list | `[]` |  |
| tsm1.volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| tsm1.volumes | list | `[]` | Additional volumes on the output Deployment definition. |
| tsm2.affinity | object | `{}` |  |
| tsm2.config.configFile | string | `""` | the TSM configuration file that will be mounted into the TSM node.  MUTUALLY EXCLUSIVE with configSecretName |
| tsm2.config.configSecretName | string | `""` | The name of the secret containing the TSM configuration file. MUTUALLY EXCLUSIVE with configFile |
| tsm2.fullnameOverride | string | `""` |  |
| tsm2.image.pullPolicy | string | `"IfNotPresent"` |  |
| tsm2.image.repository | string | `""` | Image to use for deploying the TSM node |
| tsm2.image.tag | string | `""` |  |
| tsm2.imagePullSecrets | list | `[]` |  |
| tsm2.index | int | `2` |  |
| tsm2.ingress.enabled | bool | `false` |  |
| tsm2.mpcService | object | `{}` | Optional. Only used for flexibility to expose the mpc port outside of the cluster. |
| tsm2.nameOverride | string | `""` |  |
| tsm2.nodeSelector | object | `{}` |  |
| tsm2.podAnnotations | object | `{}` |  |
| tsm2.podLabels | object | `{}` |  |
| tsm2.podSecurityContext | object | `{}` |  |
| tsm2.replicaCount | int | `1` |  |
| tsm2.resources | object | `{}` |  |
| tsm2.sdkService | object | `{"type":"ClusterIP"}` | The primary service definition for the TSM node |
| tsm2.securityContext | object | `{}` |  |
| tsm2.serviceAccount.annotations | object | `{}` |  |
| tsm2.serviceAccount.automount | bool | `true` |  |
| tsm2.serviceAccount.create | bool | `true` |  |
| tsm2.serviceAccount.name | string | `""` |  |
| tsm2.tolerations | list | `[]` |  |
| tsm2.volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| tsm2.volumes | list | `[]` | Additional volumes on the output Deployment definition. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
