class CreateCircles < ActiveRecord::Migration
  def up
    create_table :circles do |t|
      t.float :radius
    end
  end

  def down
    drop_table :circles
  end
end
