

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :password, :presence => true,
  										:confirmation => true,
  										:length => {:within => 6..40},
  										:if => :password,
  										:format => {:with => /\A.*(?=.{6,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*\Z/ }

  validates :name, :presence => true,
                   :uniqueness => true,
                   :length => {in: 5..50}

  has_many :pins

end
