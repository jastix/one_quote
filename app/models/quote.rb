class Quote < ActiveRecord::Base
  
  attr_accessible :content

  validates :content, presence: true, length: { minimum: 2 }
end
