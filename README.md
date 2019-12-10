# Helm Charts

These charts are actively maintained.

Each chart strives to **always** have an emphasis on:
  - Using Ingress with Let's Encrypt
  - Persistency
  - De-coupled services (using a separate database service)

## Installation

Add the repo!

```sh
helm repo add cdrage https://charts.charliedrage.com
```

Install a test chart:

```sh
helm install gitea cdrage/gitea
```

## List of actively maintained charts

- [Gitea](https://github.com/cdrage/charts/tree/master/gitea)
