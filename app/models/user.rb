class User < ApplicationRecord
  #devise :database_authenticatable, :registerable,
 # :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :interventions
  has_many :offers

end
