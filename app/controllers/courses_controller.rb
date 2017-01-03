   class CoursesController < ApplicationController
     def index
     end

     def new
       @course = Course.new
     end

     def create
       @course = Course.new(course_params)
       @course.save
       redirect_to @course
     end

     def show
     end

    private
      def course_params
        params.require(:course).permit(:name, :description, :address, :city, :state, :zipcode, :phone, :phone, :hole_count)
      end
    end
