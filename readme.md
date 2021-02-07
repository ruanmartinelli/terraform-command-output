# terraform-command-output

[![Build Status](https://github.com/ruanmartinelli/terraform-command-output/workflows/ci/badge.svg)](https://github.com/ruanmartinelli/terraform-command-output)

> Outputs the result of a terminal command.

🚧 This is a WIP.

## Usage

In any HCL file:

```hcl
module "run" {
  source = "github.com/ruanmartinelli/terraform-command-output"
  command = "echo 'heya'"
}

output "result" {
  value = module.run.output
}
```

Outputs:

```bash
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

result = heya
```

## License

MIT
