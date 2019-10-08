require "pry"
require_relative "config/environment"

class App < Sinatra::Base
  get "/reversename/:name" do
    name = params[:name]
    name.reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    "#{num * num}"
  end

  get "/say/:number/:phrase" do
    phrase = ""
    num = params[:number].to_i
    num.times do
      phrase += params[:phrase]
    end
    phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    words = []
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    words << word1 << word2 << word3 << word4 << word5
    string = words.join(" ")
    "#{string}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    ans = case operation
          when "add"
            (num1 + num2).to_s
          when "subtract"
            (num1 - num2).to_s
          when "multiply"
            (num1 * num2).to_s
          when "divide"
            (num1 / num2).to_s
          end
    ans
  end
end
