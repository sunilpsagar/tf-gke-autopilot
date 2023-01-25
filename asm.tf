module "kubernetes-engine_asm" {
  source  = "terraform-google-modules/kubernetes-engine/google//modules/asm"
  version = "24.1.0"
  project_id                      = var.project_id
  cluster_name      = module.gke.name
  cluster_location  = module.gke.location
  enable_cni        = true
  # insert the 3 required variables here
}