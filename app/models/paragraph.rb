class Paragraph < ActiveRecord::Base
  belongs_to :section
  has_one :photo
  belongs_to :project
end
