class Image < ApplicationRecord
  belongs_to :item, optional: true

    #imagesのカラム名を指定する
    mount_uploader :src, ImageUploader

end
