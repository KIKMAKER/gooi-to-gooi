class User < ApplicationRecord
  has_many :subscriptions
  has_many :collections, through: :subscriptions

  enum role: %i[customer driver admin]
  # Include default devise modules. Others available are:
  #  :lockable, :confirmable, :trackable :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ## NB ##
  ### updated permitted parameters for devise when going user wild
  ### see: https://kitt.lewagon.com/camps/1353/lectures/05-Rails%2F06-Airbnb-Devise#source
end
