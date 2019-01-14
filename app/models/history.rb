class History < ApplicationRecord
	has_and_belongs_to_many :users
	validates :artist, uniqueness: { case_sensitive: false }
end
