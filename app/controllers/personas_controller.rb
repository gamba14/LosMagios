class PersonasController < ApplicationController
	
	
	def index
		@persona = Persona.all
	end
	def new
		@persona = Persona.new
	end

	def create

		@persona = Persona.new(persona_params)

		if @persona.save

			flash[:notice] ="Persona creada con exito"

			redirect_to @persona
		else

			flash[:alert] = "No se ha creado"
			render "new"
		end
	end

	def show
		@persona = Persona.find(params[:id])
	end

	def destroy

		@persona = Persona.find(params[:id])
		@persona.delete
		redirect_to "/"
		
	end

	private

		def persona_params

			params.require(:persona). permit(
				:dni,
				:nombre,
				:apellido,
				:direccion,
				:localidad,
				:codigoPostal,
				:telefono,
				:correo)
		end
			
		
end
