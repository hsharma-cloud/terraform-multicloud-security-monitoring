resource "aws_cloudwatch_metric_alarm" "root_account_alarm" {
  alarm_name          = "RootAccountUsageAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "RootAccountUsageCount"
  namespace           = "SecurityMonitoring"
  period              = 300
  statistic           = "Sum"
  threshold           = 1

  alarm_description = "Alarm when root account is used"

  treat_missing_data = "notBreaching"
}
