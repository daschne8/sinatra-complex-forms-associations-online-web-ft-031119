class PetsController < ApplicationController

  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index'
  end

  get '/pets/new' do
    @owners = Owner.all
    erb :'/pets/new'
  end

  post '/pets' do
    @pet = Pet.create(params[:pet])
    @pet.owner = Owner.find_by_id(params[:pet][:owner_id])
    redirect to "pets/#{@pet.id}"
  end

  get '/pets/:id' do
    @pet = Pet.find(params[:id])
    erb :'/pets/show'
  end

  get "/pets/:id/edit" do

  end

  patch '/pets/:id' do

    redirect to "pets/#{@pet.id}"
  end
end
