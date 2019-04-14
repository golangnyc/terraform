resource "github_repository" "meetups" {
  name        = "meetups"
  description = "Repository or past meetup talks"
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

