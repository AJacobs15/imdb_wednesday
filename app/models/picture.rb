class Picture < ApplicationRecord
  # Direct associations

  has_many   :picture_tags,
             :dependent => :destroy

  # Indirect associations

  has_many   :actors,
             :through => :picture_tags,
             :source => :actor

  # Validations

end
