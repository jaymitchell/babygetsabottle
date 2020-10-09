require 'open-uri'
require 'nokogiri'

HOME_PAGE_URL = 'https://babywantsabottle.com/'
LATEST_KNOWN_COMIC_FILEPATH = 'latest_known.txt'

def get_latest_comic
  home_page_resource = open(HOME_PAGE_URL)
  home_page = Nokogiri::HTML.parse(home_page_resource)
  comic_image = home_page.at_css('.comic-image')
  comic_image[:src]
end

def latest_known_comic
  return unless File.exist?(LATEST_KNOWN_COMIC_FILEPATH)
  file = File.read(LATEST_KNOWN_COMIC_FILEPATH)
end

def store_latest_known_comic(latest_known_comic)
  File.open(LATEST_KNOWN_COMIC_FILEPATH, 'w') { |f| f.write latest_known_comic }
end

latest_comic = get_latest_comic
# Verify that the latest comic is not empty
if latest_comic != latest_known_comic
  p "NEW COMIC!!!!!!! #{latest_comic}"
  store_latest_known_comic latest_comic
end
