resource "aws_s3_bucket" "xccv-trailhead-docs" {
    bucket = "xccv-trailhead-docs"

    acl = "private"
    force_destroy = true

    website {
        index_document = "index.html"
        error_document = "error.html"
    } 
}

resource "aws_s3_bucket_policy" "xccv-trailhead-docs" {
    bucket = aws_s3_bucket.xccv-trailhead-docs.id
    policy = data.aws_iam_policy_document.xccv-trailhead-docs.json
}

data "aws_iam_policy_document" "xccv-trailhead-docs" {
    statement {
        sid = "Allow CloudFront"
        effect = "Allow"
        principals {
            type = "AWS"
            identifiers = [aws_cloudfront_origin_access_identity.xccv-trailhead-docs.iam_arn]
        }
        actions = [
            "s3:GetObject"
        ]

        resources = [
            "${aws_s3_bucket.xccv-trailhead-docs.arn}/*"
        ]
    }
}