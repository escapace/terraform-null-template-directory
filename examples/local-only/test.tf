module "under_test" {
  source = "../../"

  base_dir = "${path.module}/../src"
  # exclude = ["^style"]
  template_vars = {
    name = "Josephine"
  }
}

output "result" {
  value = module.under_test
}
