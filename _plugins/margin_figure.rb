## Liquid tag 'maincolumn' used to add image data that fits within the main column
## area of the layout
## Usage {% marginfigure /path/to/image 'This is the caption' %}
## Optional third argument: a URL to wrap the image in a link
## Usage {% marginfigure /path/to/image 'This is the caption' 'https://link' %}
#
module Jekyll
  class RenderMarginFigureTag < Liquid::Tag

  	require "shellwords"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
    end

    def render(context)
      img = "<img class='fullwidth' src='#{@text[0]}'/>"
      img = "<a href='#{@text[2]}'>#{img}</a>" if @text[2]
      "<span class='marginnote'>#{img}#{@text[1]}</span>"
    end
  end
end

Liquid::Template.register_tag('marginfigure', Jekyll::RenderMarginFigureTag)