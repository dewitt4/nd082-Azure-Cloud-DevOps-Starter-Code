provider "azurerm" {
    version = "~>2.0"
    features {}
}

resource "azurerm_policy_assignment" "auditvms" {
    name = "audit-vm-manageddisks"
    scope = var.cust_scope
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/06a78e20-9358-41c9-923c-fb736d382a4d"
    description = "Shows all virtual machines not using managed disks"
    display_name = "Audit VMs without managed disks Assignment"
}
