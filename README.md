# az-tf-rds
terraform files for provisioning an azure redis cache

By default this terraform configuration will provision a c1 redis cache which costs about $0.055/hour(EAST US)

## 🏃 Running 

Initialize terraform backend

```Bash
$ make init
```

View execution plan

```Bash
$ make plan
```

## Deploy :rocket: 

```Bash
$ make deploy
```