const { execSync } = require('child_process')
const { strictEqual } = require('assert')

const branchName = execSync("git name-rev --name-only HEAD | tr -d '\n'", {
  encoding: 'utf-8',
})

execSync('terraform init')
execSync('terraform apply --auto-approve')

const output = execSync('terraform output -json', { encoding: 'utf-8' })

execSync('terraform destroy --auto-approve')

execSync('rm -rf .terraform && rm terraform.*')

const jsonOutput = JSON.parse(output)

strictEqual(branchName, jsonOutput.branch_name.value)
