class WordsController < ApplicationController
  def index
    @words = Word.all
    @languages = Language.all
  end

  def create
    Word.create(params)
    redirect_to words_path
  end
end
