class CollectionsController < ApplicationController

#     curator_collections GET    /curators/:curator_id/collections(.:format)          collections#index
  def index
    @collections = Collection.all
  end

#                         POST   /curators/:curator_id/collections(.:format)          collections#create
  def create
    curator = Curator.find(params[:curator_id])
    collection = Collection.create(collection_params)
    Curator.collections << collection
    redirect_to "/curators/#{curator.id}"
  end

#  new_curator_collection GET    /curators/:curator_id/collections/new(.:format)      collections#new
  def new
    @curator = Curator.find(params[:curator_id])
  end

# edit_curator_collection GET    /curators/:curator_id/collections/:id/edit(.:format) collections#edit
  def edit
    @curator = Curator.find(params[:curator_id])
    @collection = Collection.find(params[:id])
  end
#      curator_collection GET    /curators/:curator_id/collections/:id(.:format)      collections#show
  def show
    @collection = Collection.find(params[:id])
  end

#                         PATCH  /curators/:curator_id/collections/:id(.:format)      collections#update
#                         PUT    /curators/:curator_id/collections/:id(.:format)      collections#update
  def update
    curator = Curator.find(params[:curator_id])
    collection = Collection.find(params[:id])
    collection.update(collection_params)
    redirect_to "/curators/#{curator.id}"
  end

#                         DELETE /curators/:curator_id/collections/:id(.:format)      collections#destroy
  def destroy
    curator = Curator.find(params[:curator_id])
    Collection.delete(params[:id])
    redirect_to "/curators/#{curator.id}"
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :curator_id, :artwork_id)
  end

end
