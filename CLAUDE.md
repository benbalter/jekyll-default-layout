# CLAUDE.md

Jekyll plugin that silently sets a default layout on pages, posts, and collection documents that don't specify one. Published to RubyGems as [`jekyll-default-layout`](https://rubygems.org/gems/jekyll-default-layout).

## How it works

- All the logic lives in one `Jekyll::Generator`, [`lib/jekyll-default-layout/generator.rb`](lib/jekyll-default-layout/generator.rb). It's marked `safe true` (so it runs on GitHub Pages) and `priority :lowest`.
- It picks the first layout that exists: `home` for the site index, then `page` for pages, `post` for posts, a layout named after the collection for collection documents, and finally `default`.
- It checks for an existing layout with `document.to_liquid`, not `document.data`, so front matter defaults from `_config.yml` count as specified. Keep that when refactoring.
- By default it only touches Markdown files. HTML files get a layout only when the site opts in with `jekyll-default-layout: { html_pages: true }` in `_config.yml`.
- Specs in [`spec/jekyll-default-layout/generator_spec.rb`](spec/jekyll-default-layout/generator_spec.rb) build the fixture site in [`spec/fixtures/site`](spec/fixtures/site). Add a fixture page or layout there when testing a new case.

## Commands

- [`script/bootstrap`](script/bootstrap) installs dependencies.
- Run [`script/cibuild`](script/cibuild) before committing. It runs RSpec, RuboCop and `gem build`, as [CI](.github/workflows/ci.yml) does.
- CI also tests Jekyll 3 and 4. Set `JEKYLL_VERSION` (for example `JEKYLL_VERSION="~> 3.0"`) before `script/bootstrap` and `script/cibuild` to match a CI job. CI skips Jekyll 3 on Ruby 4.0, which it doesn't support.
- `Gemfile.lock` and the built `.gem` are gitignored. Don't commit them.

## Releasing

- Pushing a `v*` tag runs [`release.yml`](.github/workflows/release.yml), which publishes the gem to RubyGems immediately and creates a GitHub Release. A published version can't be replaced.
- The owner cuts releases with [jekyll-release-tools](https://github.com/benbalter/jekyll-release-tools), and only after explicitly approving the release.
- When asked, agents may prepare a version-bump PR that updates [`lib/jekyll-default-layout/version.rb`](lib/jekyll-default-layout/version.rb) and [`CHANGELOG.md`](CHANGELOG.md).
- Agents never create or push tags, run `rake release` or `gem push`, or create a GitHub Release.
- Push branches with `git push --no-follow-tags`, so an annotated tag on a commit doesn't go out with the branch.
