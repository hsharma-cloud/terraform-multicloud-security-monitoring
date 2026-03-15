resource "aws_cloudwatch_log_metric_filter" "root_account_usage" {
  name           = "RootAccountUsage"
  log_group_name = aws_cloudwatch_log_group.cloudtrail_logs.name
  pattern        = "{ $.userIdentity.type = Root }"

  metric_transformation {
    name      = "RootAccountUsageCount"
    namespace = "SecurityMonitoring"
    value     = "1"
  }
}
