resource "github_repository" "meetups" {
  name        = "meetups"
  description = "Repository or past meetup talks"
  has_issues  = true
}

resource "github_team_repository" "core_meetups" {
  team_id     = "${github_team.core.id}"
  repository  = "${github_repository.meetups.name}"
  permission  = "admin"
}

resource "github_team_repository" "contributors_meetups" {
  team_id     = "${github_team.contributors.id}"
  repository  = "${github_repository.meetups.name}"
  permission  = "push"
}


data "github_repository" "terraform" {
  full_name   = "golangnyc/terraform"
}

resource "github_team_repository" "core_terraform" {
  team_id     = "${github_team.core.id}"
  repository  = "${data.github_repository.terraform.name}"
  permission  = "admin"
}
