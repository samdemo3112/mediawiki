# prod_tfvars/prod.tfvars

resource_group_name = "media-prod"
location            = "East US"
aks_name            = "prod-aks"
dns_prefix          = "prodaks"
node_count          = 3
vm_size             = "Standard_D4_v2"
tags = {
  Environment = "Production"
}
