class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lessons_path
      flash[:notice] = "The " + @lesson.name + " was successfully created."
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
      flash[:notice] = "The " + @lesson.name + " was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
    flash[:notice] = "The " + @lesson.name + " was successfully deleted."
  end

private
  def lesson_params
    params.require(:lesson).permit(:number, :name, :content)
  end
end
