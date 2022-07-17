variable "REACT_APP_SENTRY_DSN" {
  type = string
}

variable "REACT_APP_API_KEY" {
  type = string
}

variable "REACT_APP_AUTH_DOMAIN" {
  type = string
}

variable "REACT_APP_DATABASE_URL" {
  type = string
}

variable "REACT_APP_PROJECT_ID" {
  type = string
}

variable "REACT_APP_STORAGE_BUCKET" {
  type = string
}

variable "REACT_APP_MESSAGING_SENDER_ID" {
  type = string
}

variable "REACT_APP_APP_ID" {
  type = string
}

variable "REACT_APP_MEASUREMENT_ID" {
  type = string
}

terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.3"
    }
  }
}

resource "vercel_project" "sharemem" {
  name      = "sharemem"
  framework = "nextjs"
  environment = [
        {
      key = "REACT_APP_SENTRY_DSN"
      value = var.REACT_APP_SENTRY_DSN
      target = ["production", "development"]
    },

    {
      key = "REACT_APP_API_KEY"
      value = var.REACT_APP_API_KEY
      target = ["production", "development"]
    },
        {
      key = "REACT_APP_AUTH_DOMAIN"
      value = var.REACT_APP_AUTH_DOMAIN
      target = ["production", "development"]
    },
        {
      key = "REACT_APP_DATABASE_URL"
      value = var.REACT_APP_DATABASE_URL
      target = ["production", "development"]
    },
        {
      key = "REACT_APP_PROJECT_ID"
      value = var.REACT_APP_PROJECT_ID
      target = ["production", "development"]
    },
        {
      key = "REACT_APP_STORAGE_BUCKET"
      value = var.REACT_APP_STORAGE_BUCKET
      target = ["production", "development"]
    },
        {
      key = "REACT_APP_MESSAGING_SENDER_ID"
      value = var.REACT_APP_MESSAGING_SENDER_ID
      target = ["production", "development"]
    },
    {
      key: "REACT_APP_APP_ID",
      value: var.REACT_APP_APP_ID
      target=["production", "development"]
    },
    {
      key="REACT_APP_MEASUREMENT_ID",
      value: var.REACT_APP_MEASUREMENT_ID
      target=["production", "development"]
    }
  ]
  git_repository = {
    type = "github"
    repo = "mdirshaddev/sharemem"
  }
}