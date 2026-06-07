# Scouting Report

A Ruby on Rails application for creating and managing NFL scouting reports.

---

## Running the Application Locally

### Prerequisites

- Ruby 3.x
- Bundler (`gem install bundler`)
- Node.js (for asset compilation, if needed)

### Setup

```bash
# Clone the repo and install dependencies
bundle install

# Set up the database (create, migrate)
bin/rails db:create db:migrate

# Start the development server
bin/rails server
```

Then open [http://localhost:3000](http://localhost:3000) in your browser.

App uses SQLite by default

---

## Where I'd Take This Next

Given more time, I'd prioritize the following:

- **Authentication** — Add user accounts so scouts can log in and reports are tied to a specific user.
- **Filtering & search** — Let users filter reports by player name, position, team, league, or date range.
- **PDF export** — Generate a printable/shareable PDF version of each report.
- **Grade validation logic** — Enforce that Floor ≤ Expectation ≤ Ceiling and surface a clear error if not.
- **UI/UX overhaul** — Redesign the interface inspired by modern sports dashboards on [Dribbble](https://dribbble.com). I found the following references and used Claude (GitHub Copilot) to recreate something similar for this project:
  - [Sports analytics UI](https://dribbble.com/search/sports-analytics)
  - [Data table design](https://dribbble.com/search/data-table)
  - [Modal / form UI](https://dribbble.com/search/modal-form)

- **Test coverage** — Expand the test suite with model validations, controller specs, and integration tests for the full create/edit flow.

---

## AI Tool Usage

I came into this project without prior Rails experience and used Copilot as both a learning tool and a pair programmer. First I read documentation and watched a few tutorial videos before writing a line of code, then I used Copilot to understand Rails conventions as I went — asking it to explain patterns like `before_action`, resource routing, and partials in the context of what I was actually building.

The decisions I focused on were the ones that didn't require Rails knowledge: how to model a scouting report, what fields matter to a scout, whether validation should live on the client or server, and how to structure the grade projection as floor/expectation/ceiling rather than a single value.

Specific areas where Copilot was useful:

- **Learning the framework** — Understanding Rails conventions (MVC structure, `before_action`, resource routing, form helpers) on the fly.
- **Bug diagnosis** — Identifying that `edit` was missing from the `before_action :set_scouting_report` callback, which caused a `NoMethodError` on the edit page.
- **UI iteration** — Quickly prototyping the dark mode theme and layout, which I then refined to fit the Ravens brand.
- **Boilerplate** — Speeding up repetitive tasks so I could focus on the product decisions.

All generated code was reviewed before being kept
