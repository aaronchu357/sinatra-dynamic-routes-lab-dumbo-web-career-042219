require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    final = ""
    @phrase = params[:phrase]
    @repeat = params[:number].to_i
    @repeat.times{final += @phrase}
    "#{final}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    final = ""
    final += "#{params[:word1]} "
    final += "#{params[:word2]} "
    final += "#{params[:word3]} "
    final += "#{params[:word4]} "
    final += "#{params[:word5]}"
    "#{final}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@num1 + @num2}"
    elsif params[:operation] == "subtract"
      "#{@num1 - @num2}"
    elsif params[:operation] == "multiply"
      "#{@num1 * @num2}"
    else params[:operation] == "divide"
      "#{@num1 / @num2}"
    end
  end

end
