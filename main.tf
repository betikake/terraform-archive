data "archive_file" "default" {
  type        = "zip"
  output_path = "/tmp/function-source.zip"
  source_dir  = var.source_dir
}

output "source" {
  value = "./tmp/function-source.zip"
}

output "output_path" {
  value = data.archive_file.default.output_path
}

output "output_sha" {
  value = data.archive_file.default.output_sha
}
