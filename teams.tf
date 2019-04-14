resource "github_team" "core" {
  name        = "core"
  description = "Core members of GolangNYC"
  privacy     = "closed"
}

resource "github_team_membership" "core_member" {
  count       = "${length(var.core)}"

  team_id     = "${github_team.core.id}"
  role        = "member"
  username    = "${var.core[count.index]}"
}

resource "github_team" "contributors" {
  name        = "contributors"
  description = "Contributing members of GolangNYC"
  privacy     = "closed"
}

resource "github_team_membership" "contributor_member" {
  count       = "${length(var.contributors)}"

  team_id     = "${github_team.contributors.id}"
  role        = "member"
  username    = "${var.contributors[count.index]}"
}

