class StudentController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.grades.all.order(grades: :desc)
    render json: grades
  end
end
