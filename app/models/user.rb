class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :tweets, ->{ order("created_at DESC") }
  has_many :comments, ->{ order("updated_at DESC") }
  has_one_attached :image
  
  def full_profile?
    image.present? && name?
  end
end
