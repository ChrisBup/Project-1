class Artwork < ActiveRecord::Base
  has_many :curators, through: :collections
  belongs_to :artist

  def self.find(keyword)
    keyword = keyword.gsub(' ', '%20')
    url = "http://www.brooklynmuseum.org/opencollection/api/?method=collection.search&version=1&api_key=#{api_key}&keyword=" + keyword
    result = HTTParty.get(url)
    @total = result["response"]["resultset"]["total"]
    result["response"]["resultset"]["items"]["object"].map do |x|
      @title = x["title"]
      @object_date = x["object_date"]
      @medium = x["medium"]
      @label = x["label"]
      @collection = x["collection"]
      @description = x["description"]
      @image_uri = x["images"]["image"]["uri"]
      @bk_uri = x["uri"]
      x["artists"].map do |z|
        @artist_name = z["name"]
        @artist_dates = z["dates"]
      end
    end
  end

  def self.api_key
    ENV.fetch('BK_MUSEUM_KEY')
  end

end
