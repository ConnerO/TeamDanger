class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :colleges
  has_many :check_lists, through: :colleges
  has_many :rec_letters


  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

  validates :email, uniqueness: true

end
