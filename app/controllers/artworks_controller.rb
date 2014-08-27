class ArtworksController < ApplicationController

#  new_artwork GET    /artworks/new(.:format)   artworks#new
# GET /search artwork#new - (form)
def new
  @collection = params[:collection_id] ? Collection.find(params[:collection_id]) : nil
  @artwork = Artwork.new
end

# GET /results artwork#results - (API CALL & RESULTS IN HTML)
def results
  @collection = params[:collection_id] ? Collection.find(params[:collection_id]) : nil
  @artwork = Artwork.new
  @artworks = Artwork.find_in_bk(params[:artwork][:keyword])
end

# POST /create artwork#create - (DB call to create)
def create
  # get curator's collection
  @collection = Collection.find(params[:collection_id])
  # collection = Collection.find(params[:id])
  # add artwork to collection
  @artwork = Artwork.find_or_create_by artwork_params
  @collection.artworks << @artwork
  redirect_to curator_collection_path(current_curator, @collection)
end

# GET /show artwork#show - (DB call HTML to show)
# GET   /artworks/:id(.:format)   artworks#show
def show
  @artwork = Artwork.find(params[:id])
end

# DELETE /artworks/:id(.:format) artworks#destroy
def destroy
  collection = Collection.find(params[:collection_id])
  collection.artworks.delete(Artwork.find(params[:id]))
  redirect_to curator_collection_path(current_curator, current_curator.collections.first)
end

private

def artwork_params
  params.require(:artwork).permit(:id, :title, :image_url, :label, :description, :location, :medium, :object_date, :bk_uri, :bk_collection, :artist_name, :artist_nationality)
end

end
