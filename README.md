# Jekyll Default Layout

*Silently sets default layouts for Jekyll pages and posts*

[![CI](https://github.com/benbalter/jekyll-default-layout/actions/workflows/ci.yml/badge.svg)](https://github.com/benbalter/jekyll-default-layout/actions/workflows/ci.yml)

## Usage

1. Add the following to your site's Gemfile:

    ```ruby
    gem 'jekyll-default-layout'
    ```

2. And the following to your site's `_config.yml`:

    ```yml
    plugins:
      - jekyll-default-layout
    ```

Note: If you are using a Jekyll version less than 3.5.0, use the `gems` key instead of `plugins`.

## What it does

If no layout is specified for a Markdown post or page, the plugin automatically sets the "home", "post", "page", or "default" layout if it exists.

What layout is used:

* `/index.md` - the home layout, the page layout, or the default layout, if they exist, in that order
* A page - the page layout or the default layout, if they exist, in that order
* A post - the post layout or the default layout, if they exist, in that order
* A collection document - a layout matching the collection name or the default layout, if they exist, in that order

## HTML Pages

By default, the plugin only applies layouts to Markdown files. If you also want to apply layouts to HTML files that don't have a layout specified, you can enable this feature in your `_config.yml`:

```yml
jekyll-default-layout:
  html_pages: true
```

## Disabling

For a specific post or page, add `layout: null` to the front matter.
