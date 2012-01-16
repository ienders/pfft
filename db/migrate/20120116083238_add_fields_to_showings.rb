class AddFieldsToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :director, :string
    add_column :showings, :imdb, :string
  end
end
