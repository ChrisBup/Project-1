class Artwork < ActiveRecord::Base
  belongs_to_many :curators, through: :collections
  belongs_to :artist

  def self.find(keyword)
    keyword = keyword.gsub(' ', '%20')
    url = "http://www.brooklynmuseum.org/opencollection/api/?method=collection.search&api_key=DMM628ShA4&keyword=" + keyword
    response = HTTParty.get(url)
    @title = response['title']
    @artist = response['artist']
    @dates = response['dates']
    item_id = response['item_id']
  end

  def self.image(keyword)
    keyword = keyword.gsub(' ', '%20')
    url = "http://www.brooklynmuseum.org/opencollection/api/?version=1&include_image_caption=true&include_item_fields=false&format=json&item_type=exhibition&item_id=#{item_id}&start_index=0&results_limit=10&method=collection.getImages&api_key=DMM628ShA4"
    response = HTTParty.get(url)
    @image_url = response['url']
  end

end
