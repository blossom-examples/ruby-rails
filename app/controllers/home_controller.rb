class HomeController < ApplicationController
  def index
    @joke = Joke.random if Joke.any?
  end
end
