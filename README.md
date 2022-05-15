## How to Start

### 1. Export variable
```shell
export TF_VAR_google_credentials=$(cat /home/aguscuk/learning/creds/learning01-348513-9b8361167347.json)
export env="dev"
```

### 2. terraform init -var-file terraform-dev.tfvars

### 3. terraform plan -var-file terraform-dev.tfvars

### 4. terraform apply -var-file terraform-dev.tfvars