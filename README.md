# Jekyll Default Layout

*Silently sets default layouts for Jekyll pages and posts*

[![Build Status](https://travis-ci.org/benbalter/jekyll-default-layout.svg?branch=master)](https://travis-ci.org/benbalter/jekyll-default-layout)

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

## What it does

If no layout is specified for a Markdown post or page, the plugin automatically sets the "home", "post", "page", or "default" layout if it exists.

What layout is used:

* `/index.html` - the home layout, the page layout, or the default layout, if they exist, in that order
* A page - the page layout or the default layout, if they exist, in that order
* A post - the post layout or the default layout, if they exist, in that order

## Disabling

For a specific post or page, add `layout: null` to the front matter.
