class CreateRectangles < ActiveRecord::Migration
  def up
    create_table :rectangles do |t|
      t.float :width
      t.float :height
    end
  end

  def down
    drop_table :rectangles
  end
end
