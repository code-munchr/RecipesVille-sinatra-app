class IngredientController < ApplicationController
	  require 'pry'
   get '/ingredients/new' do
     erb :'/ingredients/new' 
   end

   post '/ingredients/create' do 
       
       @ingred= Ingredient.find_or_create_by(name: params[:name])
       @ingred.info= params[:info]
       @ingred.save
      erb :'/ingredients/show' 
   end


   get '/ingredients/:id/show' do
    @ingred=Ingredient.find_by(ingredient_id: params[:id])
 
  
    erb :'/ingredients/show'
   end 

    get '/ingredients' do
       @ingreds=Ingredient.all
       erb :'/ingredients/index'
    end

	

	
end
