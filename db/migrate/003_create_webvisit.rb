class CreateWebvisit < ActiveRecord::Migration
  def self.up
    create_table :web_visits do |t|
      t.datetime :date
      t.string :client
      t.string :agent
      t.string :url
      t.string :referal
    end
  end

  def self.down
    drop_table :web_visits
  end
end
