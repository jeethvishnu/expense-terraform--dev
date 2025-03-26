data "aws_ssm_parameter" "foo" {
  name = "/${var.project}/${var.env}/vpc_id"
}