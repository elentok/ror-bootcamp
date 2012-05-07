class CreateClients < ActiveRecord::Migration
  def up
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end

  def down
    drop_table :clients
  end
end
