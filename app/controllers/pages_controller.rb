require 'redcarpet'

class PagesController < ApplicationController
  def index
    rendered = Redcarpet::Markdown.
      new(Redcarpet::Render::HTML, autolink: true, tables: true).
      render(File.read("source/index.md"))
    render html: rendered, layout: :"layouts/layout"
  end
end
