module "lambda_function_hello" {
  source              = "terraform-aws-modules/lambda/aws"
  version             = "~> 6.0"
  timeout             = 300
  source_path         = "../src/"
  function_name       = "http_hello"
  handler             = "app.open_handler"
  runtime             = "python3.10"
  create_sam_metadata = true
  publish             = true
}