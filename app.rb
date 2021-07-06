require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @user_name = params[:name]
    @user_name.reverse
  end
  
  get "/square/:number" do 
    @user_number = params[:number]
    (@user_number.to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    answer = ''
    
    @user_number = params[:number]
    @user_phrase = params[:phrase]
    
    
    @user_number.to_i.times do
      answer += @user_phrase
    end

    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @user_word1 = params[:word1]
    @user_word2 = params[:word2]
    @user_word3 = params[:word3]
    @user_word4 = params[:word4]
    @user_word5 = params[:word5]
    "#{@user_word1} #{@user_word2} #{@user_word3} #{@user_word4} #{@user_word5}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end

end