class CreateEndpoints < ActiveRecord::Migration[6.1]
  def change
    create_table :endpoints do |t|
      t.string :url
      t.integer :failures
      t.integer :total_failures
      t.integer :good_since_last_failure

      t.timestamps
    end
  end
end
