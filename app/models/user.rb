class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :movies,
             :through => :bookmarks,
             :source => :movie

  # Validations

end
