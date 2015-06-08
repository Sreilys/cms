class Section < ActiveRecord::Base

  has_many :section_edits
  has_many :users, through: :section_edits

end
