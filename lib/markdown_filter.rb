require 'commonmarker'

class MarkdownFilter < Nanoc::Filter
  identifier :markdown

  def run(content, params = {})
    CommonMarker.render_html(content, [:UNSAFE, :HARDBREAKS])
  end
end
