class Artwork < ActiveRecord::Base
  has_and_belongs_to_many :collections

  def self.find_in_bk(keyword)
    keyword = [] ? keyword = 'xxx' : keyword = keyword.gsub(' ', '%20')
    url = "http://www.brooklynmuseum.org/opencollection/api/?method=collection.search&version=1&api_key=#{api_key}&keyword=" + keyword
    result = HTTParty.get(url)
    @total = result["response"]["resultset"]["total"]
    items = result.fetch("response").
      fetch("resultset").
      fetch("items")

    return [] if items.nil?

    items.fetch("object").map do |x|
        BrooklynArtwork.new(x)
    end

  end

  def self.api_key
    ENV.fetch('BK_MUSEUM_KEY')
  end

end
