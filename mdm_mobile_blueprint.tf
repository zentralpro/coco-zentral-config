resource "zentral_mdm_blueprint" "mobile" {
  name                    = "Mobile"
  collect_apps            = "ALL"
  collect_certificates    = "ALL"
  collect_profiles        = "ALL"
  default_location_id     = data.zentral_mdm_location.default.id
  legacy_profiles_via_ddm = true
}

data "zentral_mdm_location" "default" {
  name = "petit-coco.zentral.cloud"
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
