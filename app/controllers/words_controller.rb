class WordsController < ApplicationController
  def index
    @word = Word.new
    @words = Word.all
    @languages = Language.options
  end

  def create
    word = Word.new(word_params)
    unless word.save
      flash[:alert] = word.errors.full_messages
    end
    redirect_to words_path
  end

  def word_params
    params.require(:word).permit(:name, :part_of_speech, :translation, :language_id)
  end
end
