   class CoursesController < ApplicationController
     before_action :authenticate_user!, only: [:create, :new]
     require 'aws-sdk'
     require 'aws-sdk-resources'

     def index
       @courses = Course.all
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
       @reviewCount = Review.where(course_id: @course).count
       @course = Course.find(params[:id])
       @reviews = Review.where(course_id: @course)
        if @reviews.blank?
          @avg_rating = 0
        else
          @avg_rating =  @reviews.average(:rating).round(2)
        end
    end

    private
      def course_params
        params.require(:course).permit(:name, :description, :address, :city, :state, :zipcode, :phone, :phone, :hole_count, :photo)
      end
    end
