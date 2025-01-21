# EKS outputs.tf
output "eks_cluster_id" {
  value = aws_eks_cluster.main.id
}

output "eks_node_group_id" {
  value = aws_eks_node_group.main.id
}