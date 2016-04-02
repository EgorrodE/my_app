class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
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
    @book =  Book.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book }
    end
  end

  def edit
    @book = Book.find(params[:id])
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

  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(book_params)
        format.html { redirect_to(@book, :notice => 'Book was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end





  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_path, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

    def book_params
      params.require(:book).permit(
          :title, :user_id, :category,:tags,
          chapters_attributes: [:id, :text, :title, :done, :_destroy])
    end
end

