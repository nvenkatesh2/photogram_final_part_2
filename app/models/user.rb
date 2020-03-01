class User < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :foreign_key => "fan_id",
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "author_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
