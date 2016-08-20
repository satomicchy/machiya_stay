class Lodge < ApplicationRecord
  mount_uploader :picture, PictureUploader
  mount_uploader :picture2, Picture2Uploader
  attr_accessor :person_name, :person_email, :person_code, :message
end
