### Setup providers

provider "aws" {
  region = "us-west-2"

  // This is the maximum number of times an API call is retried, in the case
  // where requests are being throttled or experiencing transient failures.
  // The delay between the subsequent API calls increases exponentially.
  max_retries = "10"

  assume_role {
    role_arn = "arn:aws:iam::752180062774:role/atlantis-terraform"
  }
}

### Setup the state backend

locals {
  workspace_name = "terracode-hzhou-test-repo-init-production-us_west_2-core"
}

terraform {
  backend "s3" {
    bucket         = "segment-atlantis-production"
    key            = "atlantis.tfstate"
    region         = "us-west-2"
    role_arn       = "arn:aws:iam::752180062774:role/atlantis-terraform"
    dynamodb_table = "segment-atlantis-locks"
  }

  required_version = "1.1.7"
}
