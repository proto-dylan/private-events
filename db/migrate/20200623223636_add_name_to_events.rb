class AddNameToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :name, :string
    add_column :events, :description, :string
    
  end
end
