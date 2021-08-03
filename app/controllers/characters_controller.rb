class CharactersController < ApplicationController

    def choose
    end

    def index
      @category = params[:character]
      if @category.present? 
        @characters = Character.where(category: @category)
      else
        @characters = Character.all #le rick et morty de la mort TO DO !!!
      end
    end

    def show
      if params[:source] ==  
        @character = Character.find(params[:id])
      end

      @category = ""
      if @character.category == "Rick"
        @category = "Morty"
      else
        @category = "Rick"
      end
      
      if params[:source] != "character_show"
        @associated_characters = Character.where(category: @category)
      end
    end
end
