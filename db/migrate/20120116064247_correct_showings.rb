class CorrectShowings < ActiveRecord::Migration
  def up
    change_column :showings, :description, :text
  end

  def down
  end
end
