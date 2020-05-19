class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def fetch_table_data
    ::ListService.new(table_name, selected_column, params[:limit], params[:offset], query_params).process
  end

  def query_params; end
end
