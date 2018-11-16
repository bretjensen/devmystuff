resource "aws_api_gateway_account" "api_gw_settings" {
  cloudwatch_role_arn = "${aws_iam_role.api_gw_logs_role.arn}"
}