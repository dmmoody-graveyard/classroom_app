class LessonsController < ApplicationController
  def index
    @section = Section.find(params[:section_id])
    @lessons = Lesson.all
  end

  def show
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      redirect_to section_path(@lesson.section)
      flash[:notice] = "The " + @lesson.name + " was successfully created."
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.find(params[:id])
  end

  def update
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
      flash[:notice] = "The " + @lesson.name + " was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.find(params[:id])
    @lesson.destroy
    redirect_to sections_path
    flash[:notice] = "The " + @lesson.name + " was successfully deleted."
  end

private
  def lesson_params
    params.require(:lesson).permit(:number, :name, :content)
  end
end
