class Course < ActiveRecord::Base
   validates :code, presence: true
   validates :title, presence: true
end
