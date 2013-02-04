class State < ActiveRecord::Base
  attr_accessible :id, :confirm, :forWhat, :fromWho, :howMuch, :toWho, :return, :user_id

  belongs_to :user
end
