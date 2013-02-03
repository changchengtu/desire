class Goal < ActiveRecord::Base
  attr_accessible :price, :what, :achieve, :user_id

  belongs_to :user
end
