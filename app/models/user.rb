class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :housings
  has_many :reviews


  validates :first_name,  length: { maximum: 30 }
  validates :last_name,  length: { maximum: 30 }
  # validates :phone_number, format: { with: /\A\+56[2-9]\d{8}\z/ }, allow_blank: true

  
end
