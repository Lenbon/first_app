class Article < ActiveRecord::Base
   mount_uploader :img_name, ImgNameUploader
   validates :title, presence: true
end
