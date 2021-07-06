require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end 

  get '/square/:number' do
    num = params[:number].to_f
    "#{num * num}"
  end 

  get '/say/:number/:phrase' do
    num = params[:number].to_f
    phrase = params[:phrase]
    phrase * num
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_1 = params[:word1]
    word_2 = params[:word2]
    word_3 = params[:word3]
    word_4 = params[:word4]
    word_5 = params[:word5]
    "#{word_1} #{word_2} #{word_3} #{word_4} #{word_5}."
  end 

  get '/:operation/:number1/:number2' do
    operate = params[:operation]
    num1 = params[:number1].to_f
    num2 = params[:number2].to_f
    case operate
    when "add"
      result = num1 + num2
    when "subtract"
      result = num1 - num2
    when "multiply"
      result = num1 * num2
    when "divide"
      result = num1 / num2
    end

    result.to_s

  end 

end