class CreateLeases < ActiveRecord::Migration[6.1]
  def change
    create_table :leases do |t|
      t.integer :rent
      t.belongs_to :apartment, foreign_key: true
      t.belongs_to :tenant, foreign_key: true
      t.timestamps
    end
  end
end
