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
- Redis for PHP fathershop

## Project Run Steps

1. Clone the repository:

   ```bash
   git clone https://github.com/sakshamshaxma/fathershop
   cd fathershop
   ```

2. terraform workspace list
```
   fathershop/
├── main.tf
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

```
terraform init
```
```
terraform validate
```
```
terraform plan
```
```
terraform apply
```
```
terraform destroy
```
