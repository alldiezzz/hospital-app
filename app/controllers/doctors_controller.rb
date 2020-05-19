class DoctorsController < ApplicationController
  def index
    @doctors = fetch_table_data.includes(:hospital)
  end

  def selected_column
    [:id, :hospital_id, :name]
  end

  def table_name
    "Doctor"
  end

  def query_params
    params.permit(:hospital_id)
  end
end
