   class CoursesController < ApplicationController
     before_action :authenticate_user!, only: [:create, :new]
     def index
     end

     def new
       @course = Course.new
     end

     def create
       @course = Course.new(course_params)
       if @course.save
         redirect_to @course
       else
         flash[:danger] = @course.errors.full_messages.to_sentence
         render 'new'
       end
     end

     def show
       @course = Course.find(params[:id])
     end

    private
      def course_params
        params.require(:course).permit(:name, :description, :address, :city, :state, :zipcode, :phone, :phone, :hole_count)
      end
    end
