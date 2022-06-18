resource "azuread_group" "example" {
  display_name     = "A-AD-Group"
  mail_enabled     = true
  mail_nickname    = "ExampleGroup"
  security_enabled = true
  types            = ["Unified"]
  members = [
    azuread_user.example.object_id,
    azuread_user.test.object_id,
    /* more users */
  ]
}