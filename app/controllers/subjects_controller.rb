class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: {
        subjects: Panko::ArraySerializer.new(@subjects, each_serializer: SubjectSerializer).to_a
        }, status: :ok
      }
    end
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to @subject
    else
      render :new
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to subjects_path, notice: "Subject updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def subject_params
    params.require(:subject).permit(:title)
  end
end
