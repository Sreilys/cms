class SectionEdit < ActiveRecord::Base

  belongs_to :user, foreign_key: "user_id"
  belongs_to :section

end
