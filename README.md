
````markdown
# North Cloud Legal (NCL)


Corporate website and application codebase for **North Cloud Legal**.

**Live site:** https://northcloudlegal.com

---

## Overview

This repository contains the source code for the North Cloud Legal website and related application features.  
It powers public-facing pages, contact flows, and any internal tools surfaced via the web UI.

---

## Features

- Marketing pages with fast, accessible layouts
- Contact / enquiry flow with validation
- SEO & social meta tags
- Configurable navigation and footer content
- Production-ready configuration (env-based)

---

## Tech Stack

- **Framework:** Ruby on Rails (7.x)
- **Language:** Ruby (3.x)
- **Database:** PostgreSQL (production) / SQLite or Postgres (development)
- **Assets:** Importmap/JS bundling or ESBuild (adjust as applicable)
- **Styling:** SCSS / TailwindCSS (if enabled)
- **Testing:** RSpec + Capybara (optional)

> If your stack differs, update this section accordingly.

---

## Getting Started

### Prerequisites

- Ruby 3.x
- Bundler (`gem install bundler`)
- Node.js & Yarn (if using JS bundling)
- PostgreSQL (for production parity)

### Setup

```bash
# Clone
git clone https://github.com/fion21/ncl.git
cd ncl

# Install Ruby gems
bundle install

# Install JS deps (if applicable)
yarn install || true

# Set up environment
cp .env.example .env    # then edit .env with local values

# Database setup
bin/rails db:setup      # creates, loads schema, seeds

# Run the app
bin/rails server
# Visit http://localhost:3000
````

If you don’t have `bin/rails` available, use `bundle exec rails ...`.

---

## Configuration

Environment variables (add to `.env`/your host config):

```
RAILS_ENV=development
DATABASE_URL=XXX
RAILS_MASTER_KEY=...           # if using credentials
APP_HOST=localhost:3000
MAILER_SENDER= XXX
```

If you’re using Rails credentials:

```bash
bin/rails credentials:edit
```

---

## Running Tests

```bash
# RSpec (if configured)
bundle exec rspec

# System tests (headless)
bundle exec rspec spec/system
```

---

## Linting & Formatting (optional)

```bash
# RuboCop
bundle exec rubocop -A

# ERB Lint (if used)
bundle exec erblint --lint-all
```

---

## Deployment

General steps (adjust for your platform):

1. Ensure `RAILS_MASTER_KEY` (or credentials) is set on the host.
2. Run database migrations:

   ```bash
   bin/rails db:migrate
   ```
3. Precompile assets:

   ```bash
   bin/rails assets:precompile
   ```
4. Restart application processes.

> If you deploy via Docker, Fly.io, Render, or Heroku, document commands here.

---

## Content & SEO

* Edit page content under `app/views/...`
* Update layouts and meta tags in `app/views/layouts/application.html.erb`
* Configure Open Graph / Twitter cards in layout or via helpers

---

## Contributing

1. Create a feature branch: `git checkout -b feature/your-contrib`
2. Commit changes: `git commit -m "Add your contrib"`
3. Push branch: `git push origin feature/your-contrib`
4. Open a Pull Request

---

## Security

If you discover a security issue, please **do not** open a public issue.
Email the team privately at **[info@northcloudlegal.com](mailto:info@northcloudlegal.com)** (or your internal contact).

---

## License

Proprietary — All rights reserved.
If this should be open-source, replace with your chosen license and include `LICENSE`.

---

## Links

* **Production:** [https://northcloudlegal.com](https://northcloudlegal.com)
* **Repo:** [https://github.com/fion21/ncl](https://github.com/fion21/ncl)

```

