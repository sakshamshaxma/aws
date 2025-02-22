# Project Breakdown

## VPC Module

- VPC
- Subnet
- Internet Gateway
- Security Groups

## EKS Module

- EKS Cluster with 3 Nodes

## RDS Module

- RDS Cluster using MySQL

## Elasticache Module

- Redis

## Project Run Steps

1. Clone the repository:

   ```bash
   git clone https://github.com/sakshamshaxma/fathershop
   cd fathershop
   ```

2. terraform workspace list

```bash
terraform workspace list
```

```plaintext
fathershop/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   └── variables.tf
│   ├── eks/
│   │   ├── main.tf
│   │   └── variables.tf
│   ├── rds/
│   │   ├── main.tf
│   │   └── variables.tf
│   └── elasticache/
│       ├── main.tf
│       └── variables.tf
```

```bash
terraform init
terraform fmt
terraform validate
terraform plan -var-file=terraform.tfvars
terraform plan
terraform apply
terraform destroy
```

