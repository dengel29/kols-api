class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_token_authenticatable

  has_many :campaigns

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
