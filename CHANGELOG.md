# Changelog

## 0.2.0

### Features

- Apply default layouts to Jekyll collection documents (a layout matching the
  collection name, falling back to `default`)
- Optionally apply default layouts to HTML pages — opt in with
  `jekyll-default-layout: { html_pages: true }` in `_config.yml` (off by
  default) (#41)

### Dependencies

- Bump `rubocop-factory_bot` to `~> 2.26.0` (#40)
- Add `base64`/`benchmark`/`ostruct`/`tsort` dev deps (no longer default gems
  on Ruby 4.0)
- Declare `required_ruby_version >= 3.0`

### Infrastructure

- Modernize CI — test Ruby 3.3 & 4.0 against Jekyll 3.x & 4.x; drop EOL
  2.7/3.0; `actions/checkout` v2 → v4 (#40)
- Remove a misplaced RuboCop config from `.github/workflows/`
- Stop tracking vendored gems
