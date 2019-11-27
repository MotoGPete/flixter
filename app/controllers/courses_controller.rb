class CoursesController < ApplicationController
	attr_accessor :course, :courses 
	def index
		@courses = Course.all
	end

	def show
    @course = Course.find(params[:id])

	end
end

private

def course_params
		params.require(:course).permit(:image)
	end