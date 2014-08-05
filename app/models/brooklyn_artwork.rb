class BrooklynArtwork
  attr_accessor :title, :object_date, :medium, :label, :collection, :description,
  :image_uri, :bk_uri

  def initialize api_data
    @title = api_data["title"]
    @object_date = api_data["object_date"]
    @medium = api_data["medium"]
    @label = api_data["label"]
    @collection = api_data["collection"]
    @description = api_data["description"]
    @image_uri = api_data["images"]["image"]["uri"]
    @bk_uri = api_data["uri"]
  end # initialize
end # BrooklynArtwork
