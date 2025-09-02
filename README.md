# The Kubernetes Book test infrastructure

This repo is meant as a companion to [_The Kubernetes
Book_](https://github.com/nigelpoulton/tkb) by Nigel Poulton. It configures a
simple three-node Kubernetes cluster in Linode for testing the examples in the
book.

## General details

- You must create a `.env` file in the root of the project, containing a Linode
  API token. To generate a token, see
  [Managing personal access tokens](https://techdocs.akamai.com/cloud-computing/docs/manage-personal-access-tokens).
  ```sh
  # .env
  LINODE_TOKEN=ABCD1234
  ```
- Once the cluster is created, the kubeconfig file for it will be created at
  `~/.kube/config-tkb`. For help on utilizing this kubeconfig file, see
  [Organizing Cluster Access Using kubeconfig Files](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/).

## Create a cluster

```
tofu init
tofu apply
```

## Destroy a cluster

```
tofu destroy
```
