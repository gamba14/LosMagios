class Persona < ActiveRecord::Base
	has_many :tramites
	validates_uniqueness_of :dni
	validates :dni, presence: true
	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true
end
