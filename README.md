## Project Breakdown

### VPC Module
- VPC
- Subnet
- Internet Gateway
- Security Groups

### EKS Module
- EKS Cluster with 3 Nodes

### RDS Module
- RDS Cluster using MySQL

### Elasticache Module
- Memcache for PHP WordPress

## Project Run Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/sakshamshaxma/fathershop
   cd fathershop
   ```
2. terraform workspace list
   fathershop/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── eks/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── rds/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── elasticache/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf

3. terraform init
4. terraform validate
5. terraform plan
6. terraform apply
7. terraform output
8. terraform destroy

#Please Note: We can store secrets in Terraform Vault, such as username, password, access key, secret key, etc.
