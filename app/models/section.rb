class Section < ActiveRecord::Base
  belongs_to :course
  has_many :lessons

  include RankedModel
  ranks :row_order_sections, :with_same => :course_id
end
