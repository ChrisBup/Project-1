class Artwork < ActiveRecord::Base
  has_many :curators, through: :collections
  belongs_to :artist

  def self.find_in_bk(keyword)
    keyword = keyword.gsub(' ', '%20')
    url = "http://www.brooklynmuseum.org/opencollection/api/?method=collection.search&version=1&api_key=#{api_key}&keyword=" + keyword
    result = HTTParty.get(url)
    @total = result["response"]["resultset"]["total"]
    artworks = result.fetch("response").
      fetch("resultset").
      fetch("items").
      fetch("object").map do |x|
      BrooklynArtwork.new(x)
    end
    artworks
    # [BrooklynArtwork, ...]
  end

  def self.api_key
    ENV.fetch('BK_MUSEUM_KEY')
  end

end
