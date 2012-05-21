class CreateFacility < ActiveRecord::Migration
  def self.up
    create_table :facilities do |t|
      t.column :lat, :float
      t.column :lon, :float
      t.column :name, :string
      t.column :city, :string
      t.column :url, :string
      t.column :washrooms, :string
      t.column :facility_type, :string
      t.column :source, :string
    end
  end

  def self.down
    drop_table :facilities
  end
end
