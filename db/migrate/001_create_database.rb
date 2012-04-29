class CreateDatabase < ActiveRecord::Migration
  def self.up
    create_table :points do |t|
      t.column :lat, :float
      t.column :lon, :float
      t.column :point_type, :string
      t.column :description, :string
    end
  end

    def self.down
      drop_table :points
    end  
end
