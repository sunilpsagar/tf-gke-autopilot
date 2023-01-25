module "acm" {
  source           = "terraform-google-modules/kubernetes-engine/google//modules/acm"

  project_id       = var.project_id
  cluster_name     = module.gke.name
  location         = module.gke.location
  sync_repo        = "git@github.com:GoogleCloudPlatform/csp-config-management.git"
  sync_branch      = "1.0.0"
  policy_dir       = "foo-corp"
}