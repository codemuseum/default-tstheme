class CreateThemes < ActiveRecord::Migration
  def self.up
    create_table :themes do |t|
      t.string :urn
      
      t.timestamps
    end
    add_index :themes, :urn
  end

  def self.down
    drop_table :themes
  end
end
