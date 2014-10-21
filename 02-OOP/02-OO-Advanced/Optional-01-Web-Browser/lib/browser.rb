require 'rubygems'
require 'nokogiri'
require'open-uri'

class Browser

  def fetch_content(url)

    html = Nokogiri::HTML(open(url)) do |config|
      config.default_html
    end
    content = html.at('body').inner_text
    content.to_s
  end
end

browser = Browser.new

p browser.fetch_content("http://en.wikipedia.org/wiki/Javier_Pastore")


# EGALEMENT POSSIBLE D'UTILISER LE GEM SANITIZE :

require 'rubygems'
require 'nokogiri'
require'open-uri'
require 'sanitize'

class Browser

  def fetch_content(url)

    html = Nokogiri::HTML(open(url)) do |config|
      config.default_html
    end
    text = html.at('body').inner_text

    text.gsub!(/(\r)?\n/, "");
    text.gsub!(/\s+/, ' ');
    text = Sanitize.clean(text, :elements => ['h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'p', 'a', 'b', 'strong', 'em', 'img', 'iframe'],
      :attributes => {
        'a' => ['href', 'title', 'name'],
        'img' => ['src', 'title', 'alt'],
        'iframe' => ['src', 'url', 'class', 'id', 'width', 'height', 'name'],
        },
      :protocols => {
        'a' => {
          'href' => ['http', 'https', 'mailto']
        },
        'iframe' => {
          'src' => ['http', 'https']
        }
      })

  # clean start and end whitespace
  text = text.strip
  end
end