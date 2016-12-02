class LessonsController < ApplicationController
  before_action :authenticate_user! 
  before_action :check_enrollment
  
  

  def show
 
  end

private

def check_enrollment  
 return render text: 'Unauthorized', status: :unauthorized unless current_user.enrolled_in?(current_lesson.section.course)
end

helper_method :current_lesson
def current_lesson
  @current_lesson ||= Lesson.find(params[:id])
end

end
