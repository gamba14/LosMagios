class TramitesController < ApplicationController

	
	before_action :set_persona
	#before_action :set_tramite, only: [:show, :edit]

	def new
		@tramite = @persona.tramites.build
	end	

	def create

		
		@tramite = @persona.tramites.build(tramite_params)

		if @tramite.save 

			flash[:notice] = "Tramite creado con exito"
			redirect_to @persona

		else

			flash.now[:alert] = "Tramite no creado"
			render "new"
		end
	end

	def show
		@estado = @tramite.estados.build(estado_id: @tramite.estado_id)
	end

	def destroy

		tramite = Tramite.find(params[:id])
		persona_id = tramite.persona_id
		tramite.destroy
		redirect_to "/personas/#{persona_id}"

	end

	private

	def tramite_params
		params.require(:tramite). permit(:tipo, :comentario, :tramite_id, :estado, :string)
	end

	def set_persona
		@persona = Persona.find(params[:persona_id])
	end

	def set_tramite
		@tramite = @persona.tramites.find(params[:id])
	end
end
