class Image < ActiveRecord::Base

    belongs_to :album
    has_attached_file :data

end
