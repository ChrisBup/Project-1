class ArtworksController < ApplicationController

#  new_artwork GET    /artworks/new(.:format)   artworks#new
# GET /search artwork#new - (form)
def new
  @artwork = Artwork.new
end

# POST /search artwork#search - (API call)
def search
  redirect_to 'results'
end

# GET /results artwork#results - (HTML)
def results
  @artwork = Artwork.find(artwork_params)
  @collection = Collection.new
end

# POST /create artwork#create - (DB call)
def create
  redirect_to 'show'
end

# GET /show artwork#show - (DB call HTML)
# GET   /artworks/:id(.:format)   artworks#show
def show
  @artwork = Artwork.find(artwork_params)
  @collection = Collection.find(params[:id])
end

private

def artwork_params
  params.require(:artwork).permit(:keyword)
end

end
