class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.string :nombre
      t.string :color      
    end

    add_reference :tramites, :estado, index: true, foreign_key: true
  end
end
