class Api::V1::SubjectsController < ApplicationController
  def index
    subjects = Subject.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: {
        subjects: Panko::ArraySerializer.new(subjects, each_serializer: SubjectSerializer).to_a
        }, status: :ok
      }
    end
  end
end
