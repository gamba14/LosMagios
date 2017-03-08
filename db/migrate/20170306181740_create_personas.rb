class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :dni
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :localidad
      t.string :codigoPostal
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
