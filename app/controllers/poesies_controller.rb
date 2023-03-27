class PoesiesController < ApplicationController 

    def index
        @poesies = Poesie.all
    end

    def show
        @poesie = Poesie.find(params[:id])
    end

    def new
        @poesie = Poesie.new
        @poesie.errors.add(:base, "Ceci est un message d'erreur de test")
    end
      
    def edit
        @poesie = Poesie.find(params[:id])
    end

    def create
        @poesie = Poesie.new(poesie_params)
      
        if @poesie.save
          redirect_to @poesie, notice: 'Votre poésie a été publiée avec succès.'
        else
          render :new, alert: 'Erreur lors de la publication de votre poésie.'
        end
    end

    def update
        @poesie = Poesie.find(params[:id])
        if @poesie.update(poesie_params)
            redirect_to poesie_path
        else
            render :edit
        end
    end

    def destroy
        @poesie = Poesie.find(params[:id])
        @poesie.destroy
        redirect_to poesie_path
    end
    
      
      private
      
      def poesie_params
        params.require(:poesie).permit(:nom, :contenu, :auteur)
      end
      


    
end