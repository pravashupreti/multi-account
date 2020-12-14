locals {

  account_ids = {
    production = "123456789123",
    staging    = "123456789124",
    testing    = "123456789125"
  }

  account_id = local.account_ids[terraform.workspace]
}
