class AddAccessibleToEndpointsModel < ActiveRecord::Migration[6.1]
  def change
    add_column :endpoints, :is_accessible, :boolean, default: true
  end
end
