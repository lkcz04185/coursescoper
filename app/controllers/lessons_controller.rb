class LessonsController < ApplicationController
  before_action :authenticate_user!
   before_action :require_enrolled_in_current_course, only: [:show]
  def show
  end


  private

 helper_method :current_lesson
  def current_lesson
  @current_lesson ||= Lesson.find(params[:id])
  end
  
  def respective_course
    @respective_course ||= current_lesson.section.course
  end

  def require_enrolled_in_current_course
      if !current_user.enrolled_in?(respective_course)
        redirect_to course_path(respective_course),
        alert: 'Please enroll in the course to see the lesson content.'
      end
  end

end


 

  