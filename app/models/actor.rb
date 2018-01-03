class Actor < ApplicationRecord
  # Direct associations

  has_many   :picture_tags,
             :dependent => :destroy

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
