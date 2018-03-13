class Business < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :events

  validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: {minimum: 6}
	validates :company_name, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
