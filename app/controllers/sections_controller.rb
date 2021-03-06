class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
    @lessons = @section.lessons.all
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to sections_path
      flash[:notice] = @section.name + " was successfully created."
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(section_params)
      redirect_to section_path(@section)
      flash[:notice] = @section.name + " was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to sections_path
    flash[:notice] = @section.name + " was successfully deleted."
  end

  private
  def section_params
    params.require(:section).permit(:name, :description)
  end
end
