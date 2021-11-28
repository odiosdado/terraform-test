locals {
  subnet_list = {
      subnets = {
          "test-1-1" = {
              "vnet" = "vnet1"
              "subnet" = "subnet-123"
          },
          "test-1-2" = {
              "vnet" = "vnet1"
              "subnet" = "subnet-123"
          }
      }
  }
# subnet_ouputs = flatten([
#       for subnet, subnet_data in local.subnet_list : {
#         network_key = network_key
#         subnet_key  = subnet_key
#         network_id  = aws_vpc.example[network_key].id
#         cidr_block  = subnet.cidr_block
#       }
#   ])
}

output "test" {
  value = templatefile("${path.module}/test.tpl", local.subnet_list)
}