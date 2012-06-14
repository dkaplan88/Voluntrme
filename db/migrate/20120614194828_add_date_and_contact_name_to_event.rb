class AddDateAndContactNameToEvent < ActiveRecord::Migration
  def change
    add_column :events, :date, :string
    add_column :events, :contact_name, :string
  end
end
