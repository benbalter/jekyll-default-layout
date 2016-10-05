# Jekyll Default Layout

*Silently sets default layouts for Jekyll pages and posts*

## Usage

1. Add the following to your site's Gemfile:

    ```ruby
    gem 'jekyll-default-layout'
    ```

2. And the following to your site's `_config.yml`:

    ```yml
    gems:
      - jekyll-default-layout
    ```

## Disabling

There are two ways to disable the plugin:

1. For a specific post or page, add `layout: nil` to the front matter.

2. Site-wide, set a different front matter default for that layout.
