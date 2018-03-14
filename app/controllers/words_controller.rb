class WordsController < ApplicationController
    before_action :set_word, only: [:show, :update, :destroy]


  def index

    @words = Word.all
    respond_to do |format|
      format.html { render :index}
      format.json { json_response(@words.to_json) }
    end
    
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)

    if @word.save
        json_response(@word)
    else
        json_response(@word.errors, :unprocessable_entity) 
        #render json: @word.errors, status: :unprocessable_entity
    end

  end

def show
    respond_to do |format|
      format.html { render :show}
      if @word.phrases
        format.json { json_response(@word.to_json(:include => :phrases) }
      else
        format.json { json_response(@word)  }
      end
    end
end

  def edit; end

  def update

    if @word.update(word_params)
      if @word.phrases
        json_response(@word.to_json(:include => :phrases)) 
      else
        json_response(@word)  
      end
    else
      json_response(@word.errors, :unprocessable_entity) 
    end

  end

  def destroy
    @word.destroy

    head :no_content 

  end

  private

  def word_params
    params.permit(:english, :normansk, :tense, :category_id)
  end

  def set_word
    @word = Word.find(params[:id])
  end

  
end
