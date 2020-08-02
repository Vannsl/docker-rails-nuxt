class ExamplesController < ApplicationController
  def index
    examples = Example.all.select(:id, :name, :curated_by)
    render json: examples
  end
end