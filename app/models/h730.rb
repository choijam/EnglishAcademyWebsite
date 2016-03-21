class H730 < ActiveRecord::Base
    mount_uploader :my_image, S3uploaderUploader
end
