class CatalogController < ApplicationController
  def index
    @books = Book.order(:time_stamp)
  end
end
