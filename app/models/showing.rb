class Showing < ActiveRecord::Base

  has_attached_file :poster,
      :storage        => :s3,
      :s3_credentials => S3_CREDENTIALS,
      :path           => ":filename"

  validates_presence_of :film_title, :film_year, :description, :showtime, :poster

end
