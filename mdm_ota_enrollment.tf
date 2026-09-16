data "zentral_mdm_push_certificate" "zentral-cloud" {
  name = "Zentral Cloud"
}

data "zentral_mdm_scep_issuer" "zentral-cloud" {
  name = "Zentral Cloud"
}

resource "zentral_mdm_ota_enrollment" "default" {
  name                  = "Default"
  display_name          = "Zentral Cloud"
  blueprint_id          = zentral_mdm_blueprint.default.id
  push_certificate_id   = data.zentral_mdm_push_certificate.zentral-cloud.id
  scep_issuer_id        = data.zentral_mdm_scep_issuer.zentral-cloud.id
  meta_business_unit_id = zentral_meta_business_unit.default.id
}

resource "zentral_mdm_ota_enrollment" "mobile" {
  name                  = "Mobile"
  display_name          = "Mobile - Zentral Cloud"
  blueprint_id          = zentral_mdm_blueprint.mobile.id
  push_certificate_id   = data.zentral_mdm_push_certificate.zentral-cloud.id
  scep_issuer_id        = data.zentral_mdm_scep_issuer.zentral-cloud.id
  meta_business_unit_id = zentral_meta_business_unit.default.id
}
