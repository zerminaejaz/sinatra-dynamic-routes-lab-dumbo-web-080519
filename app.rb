require_relative 'config/environment'

class App < Sinatra::Base


  get '/reversename/:name' do
    @name = params[:name]
    "Reversed_#{@name.reverse!}"
  end 

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "The square of #{params[:number]} is : #{@square}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @sentence = ""
     @n.times{
      @sentence += params[:phrase] + " "
    }
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    #adds two numbers together (FAILED - 1)
    # subtracts the second number from the first (FAILED - 2)
    # multiplies two numbers together (FAILED - 3)
    # divides the first number by the second number (FAILED - 4)
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    op = params[:operation]
    if op == "add"
      @answer = n1 + n2
    elsif op == "subtract"
      @answer = n2 - n1
    elsif op == "multiply"
      @answer = n2 * n1
    else
      @answer = n1/n2
    end
    "#{@answer}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@string}"
  end
end
