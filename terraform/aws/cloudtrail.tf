resource "aws_cloudtrail" "security_trail" {

  name           = "security-monitoring-trail"
  s3_bucket_name = aws_s3_bucket.cloudtrail_logs.id

  include_global_service_events = true
  is_multi_region_trail         = true
  enable_logging                = true

cloud_watch_logs_group_arn = "${aws_cloudwatch_log_group.cloudtrail_logs.arn}:*"
cloud_watch_logs_role_arn  = aws_iam_role.cloudtrail_cloudwatch_role.arn

  tags = {
    Environment = "Lab"
    Project     = "Multicloud Security Monitoring"
  }
}


