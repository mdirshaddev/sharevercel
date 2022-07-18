variable "REACT_APP_SENTRY_DSN" {
  type        = string
  description = "Sentry Integration Client Key"
}

variable "REACT_APP_API_KEY" {
  type        = string
  description = "Firebase API Key"
}

variable "REACT_APP_AUTH_DOMAIN" {
  type        = string
  description = "Firebase Authentication Domain"
}

variable "REACT_APP_DATABASE_URL" {
  type        = string
  description = "Firebase Database URL"
}

variable "REACT_APP_PROJECT_ID" {
  type        = string
  description = "Google Project ID"
}

variable "REACT_APP_STORAGE_BUCKET" {
  type        = string
  description = "Firebase Storage Bucket"
}

variable "REACT_APP_MESSAGING_SENDER_ID" {
  type        = string
  description = "Firebase Messaging Sender ID"
}

variable "REACT_APP_APP_ID" {
  type        = string
  description = "Firebase APP ID"
}

variable "REACT_APP_MEASUREMENT_ID" {
  type        = string
  description = "Firebase Google Analytics Measurement ID"
}

terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.4"
    }
  }
}

provider "vercel" {
  api_token = var.vercel_api_token
}

resource "vercel_project" "sharemem" {
  name      = "sharemem"
  framework = "nextjs"
  environment = [
    {
      key    = "REACT_APP_SENTRY_DSN"
      value  = var.REACT_APP_SENTRY_DSN
      target = ["production", "preview", "development"]
    },

    {
      key    = "REACT_APP_API_KEY"
      value  = var.REACT_APP_API_KEY
      target = ["production", "preview", "development"]
    },
    {
      key    = "REACT_APP_AUTH_DOMAIN"
      value  = var.REACT_APP_AUTH_DOMAIN
      target = ["production", "preview", "development"]
    },
    {
      key    = "REACT_APP_DATABASE_URL"
      value  = var.REACT_APP_DATABASE_URL
      target = ["production", "preview", "development"]
    },
    {
      key    = "REACT_APP_PROJECT_ID"
      value  = var.REACT_APP_PROJECT_ID
      target = ["production", "preview", "development"]
    },
    {
      key    = "REACT_APP_STORAGE_BUCKET"
      value  = var.REACT_APP_STORAGE_BUCKET
      target = ["production", "preview", "development"]
    },
    {
      key    = "REACT_APP_MESSAGING_SENDER_ID"
      value  = var.REACT_APP_MESSAGING_SENDER_ID
      target = ["production", "preview", "development"]
    },
    {
      key : "REACT_APP_APP_ID",
      value : var.REACT_APP_APP_ID
      target = ["production", "preview", "development"]
    },
    {
      key = "REACT_APP_MEASUREMENT_ID",
      value : var.REACT_APP_MEASUREMENT_ID
      target = ["production", "preview", "development"]
    }
  ]
  git_repository = {
    type = "github"
    repo = "mdirshaddev/sharemem"
  }
}