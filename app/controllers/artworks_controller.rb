class ArtworksController < ApplicationController

#  new_artwork GET    /artworks/new(.:format)   artworks#new
# GET /search artwork#new - (form)
def new
  @artwork = Artwork.new
end

# GET /results artwork#results - (API CALL & RESULTS IN HTML)
def results
  @artwork = Artwork.new
  @artworks = Artwork.find_in_bk(params[:artwork][:keyword])
end

# POST /create artwork#create - (DB call to create)
def create
  # create collection if there isn't one
  if current_curator.collections.none?
    current_curator.collections << Collection.create
  end
  # get curator's first collection
  collection = current_curator.collections.first
  # add artwork to collection
  artwork = Artwork.create artwork_params
  collection.artworks << artwork
  redirect_to curator_collection_path(current_curator, collection)
end

# GET /show artwork#show - (DB call HTML to show)
# GET   /artworks/:id(.:format)   artworks#show
def show
  @artwork = Artwork.find(params[:id])
  #@collection = Collection.find(params[:id])
end

private

def artwork_params
  params.require(:artwork).permit(:caption, :image_url)
end

end
