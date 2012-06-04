class AddParametersToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :friends, :string
    add_column :volunteers, :image, :string
    add_column :volunteers, :name, :string
    add_column :volunteers, :provider, :string
    add_column :volunteers, :uid, :string
  end
end
