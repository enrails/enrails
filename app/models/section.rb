class Section < ActiveRecord::Base
	has_many :paragraphs
	has_one :gallery
	has_many :projects
end
