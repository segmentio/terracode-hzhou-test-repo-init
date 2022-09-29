# Bootstrapping with Atlantis

In order to enable Atlantis for this repo, run the following:

```
atlantis.webhook.add
```

This will add the webhook so Atlantis can run Terraform plans.

Feel free to remove this section of the README after you have completed the steps above.

# terracode-hzhou-test-repo-init

This repository hosts the terraform configurations for all terracode-hzhou-test-repo-init services

# Requirements

- [terraform 1.1.7+](https://www.terraform.io/downloads.html)

# Getting Started

We use [Atlantis](https://www.runatlantis.io/) to manage terraform state, and [Terrafile](https://github.com/segmentio/terrafile/) for module caching.

[Learn how to use Atlantis at Segment](https://paper.dropbox.com/doc/Tools-Atlantis--AcrjOVqFHk8ogXyec~rz~lvmAg-mUT3ReZYHFJsVbFirc4zB)

# Modules

When you can, use https://github.com/segmentio/terracode-modules instead of using raw AWS terraform resources.

Also refer to existing terraform services to understand patterns of usage
