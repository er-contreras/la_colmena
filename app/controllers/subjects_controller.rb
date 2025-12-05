class SubjectsController < ApplicationController
  before_action :set_subject, only: [ :show, :edit, :update, :destroy, :toggle_complete ]

  def index
    @subjects = Subject.ordered
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      respond_to do |format|
        format.html { redirect_to subjects_path, notice: "Subject has been successfully created." }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      redirect_to subjects_path, notice: "Subject updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @subject.destroy

    respond_to do |format|
      format.html { redirect_to subjects_path, notice: "Subject was successfully destroyed." }
      format.turbo_stream
    end
  end

  def toggle_complete
    @subject.toggle_completed!

    respond_to do |format|
      # format.turbo_stream
      # format.turbo_stream { render turbo_stream: turbo_stream.prepend("subjects", partial: "subject") }
      # format.html { redirect_to subjects_path, notice: "Subject updated!" }
    end
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:title)
  end
end
