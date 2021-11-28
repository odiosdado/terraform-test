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
}

output "test" {
  value = templatefile("${path.module}/test.tpl", local.subnet_list)
}