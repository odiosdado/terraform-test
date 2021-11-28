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
          },
          "test-1-3" = {
              "vnet" = "vnet1"
              "subnet" = "subnet-1234"
          }
          "test-1-4" = {
              "vnet" = "vnet1"
              "subnet" = "subnet-12345"
          }
      }
  }
}

output "test" {
  value = templatefile("${path.module}/test.tpl", local.subnet_list)
}