class CreateFatores < ActiveRecord::Migration
  def self.up
    create_table :fatores do |t|
      t.integer :prazo

      t.timestamps
    end
  end

  def self.down
    drop_table :fatores
  end
end
