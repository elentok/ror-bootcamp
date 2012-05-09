class CreateShapes < ActiveRecord::Migration

  def up
    create_table :shapes do |t|
      t.float :x
      t.float :y

      t.references :has_shape, polymorphic: true

      t.timestamps
    end
  end

  def down
    drop_table :shapes
  end

end
