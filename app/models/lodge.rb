class Lodge < ApplicationRecord
  mount_uploader :picture, PictureUploader
  attr_accessor :person_name, :person_email, :person_code, :message
end
