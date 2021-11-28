{
    "resources": ${jsonencode([
        for subnet, subnet_data in subnets : {
            subnet = subnet
            vnet   = "${subnet}/${subnet_data.vnet}"
        }
    ])},
    "vnets": ${jsonencode({
        for subnet, subnet_data in subnets : "${subnet}" => "${subnet}/${subnet_data.vnet}"
    })}
}