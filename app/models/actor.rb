class Actor < ApplicationRecord
  # Direct associations

  has_many   :picture_tags,
             :dependent => :destroy

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  has_many   :movies,
             :through => :castings,
             :source => :movie

  # Validations

end
