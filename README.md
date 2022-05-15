## How to Start

### 1. setting environment
```shell
export TF_VAR_google_credentials=$(cat /home/aguscuk/learning/creds/learning01-348513-9b8361167347.json)
```

### 2. deploy vpc development
```shell
cd development
terraform init -var-file terraform-dev.tfvars
terraform plan -var-file terraform-dev.tfvars
terraform apply -var-file terraform-dev.tfvars
```

### 3. deploy vpc staging
```shell
cd staging
terraform init -var-file terraform-qas.tfvars
terraform plan -var-file terraform-qas.tfvars
terraform apply -var-file terraform-qas.tfvars
```

### 4. deploy vpc production
```shell
cd production
terraform init -var-file terraform-prd.tfvars
terraform plan -var-file terraform-prd.tfvars
terraform apply -var-file terraform-prd.tfvars
```