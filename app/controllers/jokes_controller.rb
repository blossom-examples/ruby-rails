class JokesController < ApplicationController
  def index
    @jokes = Joke.all.order(created_at: :desc)
  end

  def show
    @joke = Joke.find(params[:id])
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(joke_params)

    if @joke.save
      redirect_to jokes_path, notice: "Joke was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @joke = Joke.find(params[:id])
  end

  def update
    @joke = Joke.find(params[:id])

    if @joke.update(joke_params)
      redirect_to jokes_path, notice: "Joke was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @joke = Joke.find(params[:id])
    @joke.destroy

    redirect_to jokes_path, notice: "Joke was successfully deleted."
  end

  def random
    @joke = Joke.random
    render :show
  end

  private

  def joke_params
    params.require(:joke).permit(:content, :author, :category)
  end
end
