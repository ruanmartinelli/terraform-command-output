module "run" {
    source = "github.com/ruanmartinelli/terraform-command-output"
    command = "git name-rev --name-only HEAD"
}

output "branch_name" {
    value = module.run.output
}