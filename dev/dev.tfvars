# dev_tfvars/dev.tfvars

resource_group_name = "backend-west-europe"
location            = "West Europe"
aks_name            = "dev-aks"
dns_prefix          = "devaks"
node_count          = 1
vm_size             = "Standard_D2_v2"
tags = {
  Environment = "Dev"
}
