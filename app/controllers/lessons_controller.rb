class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_authorized_for_current_section

	def show
	end

	private

	# helper_method :enrolled_in?
	# def enrolled_in?
	# 	if current_course.enrollments.user != current_user 
	# 		redirect_to course_path(current_section.course)

	# 	end
	# end



	def require_authorized_for_current_section
		 if current_user.enrolled_in?(@current_course) #= @current_user 
			redirect_to course_path(current_lesson.course)

		else
			redirect_to root_url, alert: 'You Shall Not Pass!'
end
	end

	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end
end

