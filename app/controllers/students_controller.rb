class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate
    @student.update(active: !@student.active)
    redirect show_student(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end