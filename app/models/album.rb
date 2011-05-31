class Album < ActiveRecord::Base

    has_many :images
    accepts_nested_attributes_for :images, :allow_destroy => true
    validates_presence_of :name, :description

end
