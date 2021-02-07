module "git_branch" {
    source = "../"
    command = "git name-rev --name-only HEAD"
}

output "branch_name" {
    value = module.git_branch.output
}