# output "ec2_info" {
#   value = module.ec2
# }

output "all_public-ips" {
   #value = ["${var.instances[count.index]}-${module.ec2.instance_public_ips}"]
   value = module.ec2.instance_public_ips
#     value = {
#     for inst in module.ec2 :
#     inst.tags["Name"] => inst.public_ip
#   }
}

output "all_private_ips" {
  value = module.ec2.instance_private_ips
}