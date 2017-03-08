class CreateTramites < ActiveRecord::Migration[5.0]
  def change
    create_table :tramites do |t|
      t.string :id_tramite
      t.string :tipo
      t.string :comentario
      t.references :persona, foreign_key: true

      t.timestamps
    end
  end
end
