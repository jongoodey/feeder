require 'open-uri'
module HomeHelper
  def feeder
    # rss = SimpleRSS.parse open('http://feeds.feedburner.com/37signals/beMH')
    rss = SimpleRSS.parse open('http://feeds.bbci.co.uk/sport/0/football/rss.xml?edition=uk')
    rss
  end
   
  def blog_feed
    source = "http://feeds.feedburner.com/37signals/beMH" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
     
    # html = "<ul>"
    # rss.items.each do |i|
    # html << "<li><a href='#{i.link}'>#{i.title}</a></li>"
    # html << "</ul>"
    # html
     
    # end
  
  end
end