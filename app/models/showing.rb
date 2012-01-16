class Showing < ActiveRecord::Base

  has_attached_file :poster

  validates_presence_of :film_title, :film_year, :description, :showtime, :poster

end
