class Section < ActiveRecord::Base
  belongs_to :course
  has_many :lessons

  include RankedModel
  ranks :row_order_sections, :with_same => :course_id


  def next_section
    section = course.sections.where("row_order_sections > ?", self.row_order_sections).rank(:row_order_sections).first

    return section
  end

end
