resource "aws_cloudwatch_log_group" "cloudtrail_logs" {
  name = "/aws/cloudtrail/security-monitoring"

  retention_in_days = 30

  tags = {
    Environment = "Lab"
    Project     = "Multicloud Security Monitoring"
  }
}
