class Project < ActiveRecord::Base
	belongs_to :section
	has_one :gallery
	has_many :paragraphs
end
