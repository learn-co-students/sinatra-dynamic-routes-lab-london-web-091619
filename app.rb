require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i
    (@square ** 2).to_s
  end
end
  
 get 'say/:number/:phrase' do 
     say = ""
     params[:number].to_i.times do
       say += params[:phrase]
     end
     say
   end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
      params[:word1] + ""
      params[:word2] + ""
      params[:word3] + ""
      params[:word4] + ""
      params[:word5] + "."

end

 get '/:operation/:number1/:number2' do
  num1 = params[:number1]
  num2 = params[:number2]
  case params:[operation]
  
  when  add
    (num1 + num2).to_s
  
  when subtract 
    (num1 - num2).to_s
  
  when multiply 
    (num1 * num2).to_s
  
  when divide 
    (num1/num2).to_s
        end
      end
  end