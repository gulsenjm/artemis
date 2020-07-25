module "artemis-deploy" {
  source  = "gulsenjm/chart/helm"

  deployment_name        = "artemis"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "none" 
  deployment_path        = "artemis"

  template_custom_vars  = {     
    deployment_image     = "${var.deployment_image}"    
  }
}


variable "deployment_environment" {
  default = "dev"
}


variable "deployment_image" {
  default = "gulsenjm/artemis:master"
}