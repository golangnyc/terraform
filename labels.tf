resource "github_issue_label" "pending_label" {
  repository = "meetups"

  name        = "pending"
  color       = "8041b5"
  description = "Event is pending approval"
}
resource "github_issue_label" "scheduled_label" {
  repository = "meetups"

  name        = "scheduled"
  color       = "f21557"
  description = "Event has been approved and scheduled"

}
