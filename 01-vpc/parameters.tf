#AWS Systems Manager (SSM) Parameter Store is a service that provides secure, hierarchical storage for 
# configuration data and secrets management. It is used to store sensitive information like passwords, 
# database connection strings, and API keys as parameters. 
# These parameters can be stored as plain text or encrypted data, ensuring security and scalability.
resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.env}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}