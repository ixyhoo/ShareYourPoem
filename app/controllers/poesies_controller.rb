class PoesiesController < ApplicationController 

    def index
        @poesies = Poesie.all
    end

    def show
        @poesie = Poesie.find(params[:id])
    end

    def new
    end

    def create
    end
    
end