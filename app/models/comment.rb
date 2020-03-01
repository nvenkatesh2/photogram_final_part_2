class Comment < ApplicationRecord
  # Direct associations

  belongs_to :author,
             :class_name => "User"

  belongs_to :photo,
             :counter_cache => true

  # Indirect associations

  # Validations

end
