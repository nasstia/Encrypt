class CaesarController < ApplicationController

  def index
      @caesar = Caesar.new
    end

    def create
      @caesar = Caesar.new
      if @caesar.save
        @caesar = Caesar.new(caesar_params)
      @result = @caesar.caesar
      render 'index'
    end
  end

  def decrypt
    @caesar = Caesar.new
    if @caesar.save
      @caesar = Caesar.new(caesar_params)
      pp  @result = @caesar.brutus
      render 'index'
    end
  end

private

def caesar_params
params.require(:caesar).permit(:word, :count)
end

end
