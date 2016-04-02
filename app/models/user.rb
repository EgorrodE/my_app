class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  has_many :books
  has_many :comments, as: :commentable
  has_many :likes, as: :likable
  has_many :positions, as: :positionable
  has_many :rates, as: :rateble


end
