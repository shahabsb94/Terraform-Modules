# output "ec2_info" {
#   value = aws_instance.main
# }

output "instance_public_ips" {
  value = aws_instance.main[*].public_ip
}

output "instance_private_ips" {
  value = aws_instance.main[*].private_ip
}