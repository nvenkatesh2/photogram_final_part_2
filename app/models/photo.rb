class Photo < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "User"

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :commenters,
             :through => :comments,
             :source => :author

  has_many   :fans,
             :through => :likes,
             :source => :fan

  # Validations

end
