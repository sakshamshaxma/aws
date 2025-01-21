##project breakdown
1. VPC Module #vpc subnet internet gateway security groups

2. EKS Module #eks cluster with 3 nodes.

3. RDS Module #rds cluster using mysql

4. Elasticache Module # memcache for php wordpress

##project run steps

git clone https://github.com/sakshamshaxma/fathershop
cd fathershop
terraform workspace list # show project list
fathershop/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
├── vpc/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
├── eks/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
├── rds/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
├── elasticache/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf

terraform init #initialize configurations and download plugins and dependency

terraform validate #validate terraform syntax and error free

terraform plan #show details preview about configuration

terraform apply #create infrastructure

terraform output #show output from state file

terraform destroy #remove infrastrucure

please note: we can store secrets in terraform vault like username password access key secret key etc.
