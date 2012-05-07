class CreateShapes < ActiveRecord::Migration
  def up
    create_table :shapes do |t|
      t.float :x
      t.float :y
      t.string :color
    end
  end

  def down
    drop_table :shapes
  end
end
