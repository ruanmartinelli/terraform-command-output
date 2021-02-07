resource "null_resource" "run" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "${var.command} | tr -d '\n' > result"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "rm result"
  }
}

data "local_file" "result" {
  filename   = "result"
  depends_on = [null_resource.run]
}