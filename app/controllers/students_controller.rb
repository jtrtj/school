class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def new
    @stduent = Student.new
  end
end
