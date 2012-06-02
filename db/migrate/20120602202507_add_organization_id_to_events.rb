class AddOrganizationIdToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :org_id
    add_column :events, :organization_id, :integer
  end
end
