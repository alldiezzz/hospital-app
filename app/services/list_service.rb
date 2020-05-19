class ListService
  attr_reader :klass_name, :selected_column, :limit, :offset, :query_params
  def initialize(table_name, selected_column, limit = 10, offset = 0, query_params = {})
    @klass_name = convert_to_class(table_name)
    @selected_column = selected_column
    @limit = limit
    @offset = offset
    @query_params = query_params
  end

  def process
    klass_name.where(query_params).select(selected_column)
    .limit(limit).offset(offset)
    .order(id: :asc)
  end

  def convert_to_class(name)
    name.constantize
  end
end