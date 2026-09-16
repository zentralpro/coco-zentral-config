resource "zentral_mdm_blueprint" "mobile" {
  name                    = "Mobile"
  collect_apps            = "ALL"
  collect_certificates    = "ALL"
  collect_profiles        = "ALL"
  legacy_profiles_via_ddm = true
}

# Mobile

resource "zentral_mdm_blueprint_artifact" "slack" {
  blueprint_id = zentral_mdm_blueprint.mobile.id
  artifact_id  = zentral_mdm_artifact.slack.id
  ios          = true
  ipados       = true
}

resource "zentral_mdm_blueprint_artifact" "arte" {
  blueprint_id = zentral_mdm_blueprint.mobile.id
  artifact_id  = zentral_mdm_artifact.arte.id
  ios          = true
  ipados       = true
}
