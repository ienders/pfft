class CreateShowing < ActiveRecord::Migration
  def up
    create_table :showings do |t|
      t.string :film_title
      t.integer :film_year
      t.integer :description
      t.datetime :showtime

      t.string :poster_file_name
      t.string :poster_content_type
      t.integer :poster_file_size
      t.datetime :poster_updated_at

    end
  end

  def down
    drop_table :showings
  end
end
