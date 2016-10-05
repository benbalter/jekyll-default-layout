module JekyllDefaultLayout
  # Injects front matter defaults to set default layouts, if they exist
  class Generator < Jekyll::Generator
    attr_accessor :site

    safe true
    priority :high

    def initialize(site)
      @site = site
    end

    def generate(site)
      @site = site
      defaults ||= []

      JekyllDefaultLayout::LAYOUTS.each do |layout|
        defaults.push(default_for(layout)) if should_set_default?(layout)
      end
    end

    private

    def defaults
      site.config['defaults']
    end

    # Does the given layout exist for the site?
    def layout_exists?(layout)
      !site.layouts[layout].nil?
    end

    # Has the user already specified a default for this layout?
    def default_exists?(layout)
      defaults.any? do |default|
        default['scope'] && default['scope']['layout'] == layout
      end
    end

    # Should we set a default for the given layout?
    # Checks that:
    #  1. The layout exists
    #  2. The user hasn't already set a default for this layout
    def should_set_default?(layout)
      layout_exists?(layout) && !default_exists?(layout)
    end

    # Returns the hash representing the front matter default for the layout
    def default_for(layout)
      {
        'scope' => scope_for(layout),
        'values' => { 'layout' => layout }
      }
    end

    # Returns a hash representing the "scope" for the front matter default
    def scope_for(layout)
      if layout == 'default'
        { 'path' => '' }
      else
        { 'type' => layout }
      end
    end
  end
end
