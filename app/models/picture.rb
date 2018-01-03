class Picture < ApplicationRecord
  # Direct associations

  has_many   :picture_tags,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
