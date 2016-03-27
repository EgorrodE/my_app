class CatalogController < ApplicationController
  def index
    @books = Book.order('created_at DESC').all
  end
end
