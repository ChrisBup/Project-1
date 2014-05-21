class CuratorsController < ApplicationController

 #     curators GET    /curators(.:format)                                  curators#index
  def index
    @curators = Curator.all
  end

 #              POST   /curators(.:format)                                  curators#create
  def create
    curator = Curator.create(curator_params)
    redirect_to curator_path(curator)
  end

  # new_curator GET    /curators/new(.:format)                              curators#new
  def new
    @curator = Curator.new
  end

 # edit_curator GET    /curators/:id/edit(.:format)                         curators#edit
  def edit
    @curator = Curator.find(params[:id])
  end

 # curator GET    /curators/:id(.:format)                              curators#show
  def show
    @curator = Curator.find(params[:id])
    @collection = Collection.all
  end

 # PATCH  /curators/:id(.:format)                              curators#update
 # PUT    /curators/:id(.:format)                              curators#update
  def update
    curator = Curator.find(params[:id])
    curator.update(curator_params)
    redirect_to curator_path(curator)
  end

 # DELETE /curators/:id(.:format)                              curators#destroy
  def destroy
    Curator.delete(params[:id])
    redirect_to curators_path
  end

  private

  def curator_params
    params.require(:curator).permit(:username, :password, :password_confirmation, :terms_of_service)
  end

end
