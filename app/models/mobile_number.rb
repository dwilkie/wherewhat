class MobileNumber < ActiveRecord::Base
  belongs_to :user

  validates :number,
            :presence => true,
            :uniqueness => true,
            :format => {:with => /^[1-9]{1}[0-9]{0,2}[1-9]{1}\d{5,12}$/ },
            :allow_nil => true,
            :allow_blank => true

end

