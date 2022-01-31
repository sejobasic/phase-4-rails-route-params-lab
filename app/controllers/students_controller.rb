class StudentsController < ApplicationController

  def index
    students = Student.where("last_name = :last_name")
    render json: students
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end

end
