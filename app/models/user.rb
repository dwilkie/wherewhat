class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  belongs_to :active_mobile_number,
             :class_name => "MobileNumber"

  has_many   :mobile_numbers

end

