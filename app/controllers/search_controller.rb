class SearchController < ApplicationController
  def search
    @results = Course.search(params[:term])
  end
end
