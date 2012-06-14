class AddWebsiteAndDescriptionToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :website, :string
    add_column :organizations, :description, :string
  end
end
