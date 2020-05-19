class HospitalsController < ApplicationController
  def index
    @hospitals = fetch_table_data
  end

  def selected_column
    [:id, :name, :address]
  end

  def table_name
    "Hospital"
  end
end
