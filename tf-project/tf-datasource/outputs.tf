output "aws_ami_id" {
  value = data.aws_ami.ami.id
}

output "aws_sg" {
  value = data.aws_security_group.security_group
}