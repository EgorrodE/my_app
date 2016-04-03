class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy, :add_chapter, :delete_chapter]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new]

  def index
    @books = Book.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @book }
    end
  end

  def show
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end

  def new
    @book =  Book.create(user_id: current_user.id, title: "No title")
  end

  def edit
  end

  def create
  @book = Book.new(book_params)
  @book.user_id = current_user.id
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_chapter
    @book.chapters.push Chapter.create(book_id: @book.id, title: "No title")
  end

  def delete_chapter
    @book.chapters.find(params[:chapter_id]).destroy
  end

  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(book_params)
        format.html { redirect_to @book, :notice => 'Book was successfully updated.' }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end





  def destroy
    @book.destroy
    @books = Book.all
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end

  private

  def set_book
    @book = Book.find(params[:book_id] || params[:id])
  end

  def book_params
    params.require(:book).permit(
        :title, :user_id, :category,:tags,
        chapters_attributes: [:id, :text, :title, :done, :_destroy])
  end
end

