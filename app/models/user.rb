class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :check_lists, through: :colleges

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: true

  validates_format_of :first_name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
 
  validates_format_of :last_name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
  
end
