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
  git_repository = {
    type = "github"
    repo = "mdirshaddev/sharemem"
  }
}