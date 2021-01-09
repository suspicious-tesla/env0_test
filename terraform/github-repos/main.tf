provider "github" {
  organization = var.github_org
}

resource "github_repository" "github_repos" {
  name        = "github-repos"
  description = "Terraform repostiory for creating Github Repositorys in the suspicous-tesla org"

  visibility = "private"
  auto_init  = true
}

resource "github_repository_collaborator" "github_repos" {
  for_each = var.admin_users

  repository = github_repository.github_repos.name
  username   = each.key
  permission = "admin"
}

resource "github_branch" "github_repos" {
  for_each = var.default_branches

  repository = github_repository.github_repos.name
  branch     = each.key
}