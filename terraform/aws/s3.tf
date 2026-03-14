resource "aws_s3_bucket" "cloudtrail_logs" {
  bucket = "multicloud-security-cloudtrail-logs-demo"

  tags = {
    Name        = "CloudTrail Log Bucket"
    Environment = "Lab"
  }
}
