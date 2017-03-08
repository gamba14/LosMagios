class AddEstadoToTramites < ActiveRecord::Migration[5.0]
  def change
    add_column :tramites, :estado, :string
    add_column :tramites, :string, :string
  end
end
