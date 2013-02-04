class Goal < ActiveRecord::Base
  attr_accessible :id, :price, :what, :achieve, :user_id

  belongs_to :user
end
