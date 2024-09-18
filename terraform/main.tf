module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "development+iot+orgtest-afttestc@mh-iot.com"
    AccountName               = "Aft-testc"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "development+iot+orgtest-afttestc@mh-iot.com"
    SSOUserFirstName          = "AFT"
    SSOUserLastName           = "test"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
