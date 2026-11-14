resource "aws_eks_cluster" "eks-1" {
  name     = var.cluster_name

  access_config {
    authentication_mode = "API"
  }

  role_arn = aws_iam_role.eks-1.arn
  version = "1.37"

  vpc_config {
    subnet_ids = {
        aws_subnet.private_subnet_1.id,
        aws_subnet.private_subnet_2.id,
        aws_subnet.private_subnet_3.id
    }
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks-1-AmazonEKSClusterPolicy,
   # aws_iam_role_policy_attachment.eks-1-AmazonEKSServicePolicy
  ]

}

resource "aws_iam_role" "eks_iam_role" {
  name = var.cluster_name+"-iam-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
            "sts:AssumeRole"
            "sts:TagSession"
        ]
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "eks-1-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks_iam_role.name
}