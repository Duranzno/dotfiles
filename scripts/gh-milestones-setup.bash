#!/usr/bin/env bash
gh alias set listMilestones "api graphql -F owner=':owner' -F name=':repo' -f query='
    query ListMilestones(\$name: String\!, \$owner: String\!) {
        repository(owner: \$owner, name: \$name) {
            milestones(first: 100) {
                nodes {
                    title
                    number
                    description
                    dueOn
                    url
                    state
                    closed
                    closedAt
                    updatedAt
                }
            }
        }
    }
'"

gh alias set --shell viewMilestone "gh api graphql -F owner=':owner' -F name=':repo' -F number=\$1 -f query='
    query GetMilestones(\$name: String\!, \$owner: String\!, \$number: Int\!) {
        repository(owner: \$owner, name: \$name) {
            milestone(number: \$number) {
                title
                number
                description
                dueOn
                url
                state
                closed
                closedAt
                updatedAt
                issues(first: 100) {
                    nodes {
                        title
                        number
                        url
                        state
                    }
                }
                pullRequests(first: 100) {
                    nodes {
                        title
                        number
                        url
                        state
                    }
                }
            }
        }
    }
'"
# echo '{
#   "title": "Create a miletsone via gh",
#   "state": "open",
#   "due_on": "2020-12-31T23:59:59Z",
#   "description": "Description foo bar"
# }' | gh createMilestone
gh alias set --shell createMilestone "gh api --method POST repos/:owner/:repo/milestones --input - | jq '{ html_url: .html_url, state: .state, created_at: .created_at }'"
gh alias set --shell closeMilestone "echo '{\"state\": \"closed\"}' | gh api --method PATCH repos/:owner/:repo/milestones/\$1 --input - | jq '{ html_url: .html_url, state: .state, closed_at: .closed_at }'"
gh alias set --shell reopenMilestone "echo '{\"state\": \"open\"}' | gh api --method PATCH repos/:owner/:repo/milestones/\$1 --input - | jq '{ html_url: .html_url, state: .state, updated_at: .updated_at }'"
gh alias set --shell deleteMilestone "gh api --method DELETE repos/:owner/:repo/milestones/\$1"