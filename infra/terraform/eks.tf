resource "aws_eks_cluster" "this" {
  name     = "project-3-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  # Pin version to avoid AL2023 / nodeadm issues
  version = "1.32"

  vpc_config {
    subnet_ids = [
      aws_subnet.private_a.id,
      aws_subnet.private_b.id
    ]

    endpoint_public_access  = true
    endpoint_private_access = true
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy
  ]
}

