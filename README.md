Reff: https://www.youtube.com/playlist?list=PL4SGTPmSY0qngs44Ssc0RHO9h4fmZ9JUb

## How to Start

### 1. Export variable
```shell
export TF_VAR_google_credentials=$(cat /home/aguscuk/learning/creds/learning01-348513-9b8361167347.json)
export env="dev"
```

### 2. Init
```shell
terraform init -var-file terraform-dev.tfvars
```

### 3. Plan
```shell
terraform plan -var-file terraform-dev.tfvars
```

### 4. Apply
```shell
terraform apply -var-file terraform-dev.tfvars
```