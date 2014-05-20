#  new_artwork GET    /artworks/new(.:format)                              artworks#new
def new
  @artwork = Artwork.find(artwork_params)
end

#      artwork GET    /artworks/:id(.:format)                              artworks#show
def show
  @image_url = Artwork.image
  @title = Artwork.title
  @artist = Artwork.artist
  @dates = Artwork.dates
end

def artwork_params
  params.require(:artwork).permit(:keyword, :date_range_begin, :date_range_end)
end
