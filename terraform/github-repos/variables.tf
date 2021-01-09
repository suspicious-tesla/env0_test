variable "github_org" {
  description = "GitHub Organization to mange resources within"
  type        = string
}

variable "admin_users" {
  description = "List of users to give Admin rights to within repositories"
  type        = set(string)
}

variable "default_branches" {
  description = "List of default branches to initialise a repository with"
  type        = set(string)
}
