output "output" {
  description = "Command output"
  value       = data.local_file.result.content
}