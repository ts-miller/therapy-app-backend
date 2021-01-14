class AddAndChangeClientsCols < ActiveRecord::Migration[6.0]
  def change
    rename_column :clients, :name, :first_name
    add_column :clients, :last_name, :string
    add_column :clients, :location, :string
  end
end
