class CatalogController < ApplicationController
  def index
    @chapters = Chapter.order('created_at DESC').all.where('chapters.book_id IS NOT NULL')

  end
end

