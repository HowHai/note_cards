class Answer < ActiveRecord::Base
  belongs_to :note_card
  acts_as_votable 
end
