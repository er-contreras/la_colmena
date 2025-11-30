class Api::V1::SubjectsController < ApplicationController
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

  private

  def subject_params
    params.require(:subject).permit(:title)
  end
end
