class PictureTag < ApplicationRecord
  # Direct associations

  belongs_to :picture

  belongs_to :actor

  # Indirect associations

  # Validations

end
