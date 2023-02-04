terraform {
  backend "s3" {
    bucket = "vprojects3bucket"
    key    = "vprojects3bucketkey"
    region = "us-east-1"
  }
}
