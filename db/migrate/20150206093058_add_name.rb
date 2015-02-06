class AddName < ActiveRecord::Migration
  def change
  	add_column :concerts, :name, :string
  end
end
