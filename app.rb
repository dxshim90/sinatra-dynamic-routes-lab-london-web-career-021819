require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!


get '/reversename/:name' do
  @name = params[:name].reverse
  "#{@name}"
end


get '/square/:number' do
@number = params[:number].to_i
@newnm = @number * @number
"#{@newnm}"
end

get '/say/:number/:phrase' do
  number = params[:number].to_i
  phrase = params[:phrase]
  # number.times{"#{phrase}"}
  phrase * number
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  arr = []
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
   "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end

get '/:operation/:number1/:number2' do
  @operation = params[:operation].to_s
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  if @operation == "add"
    soloution = @number1 + @number2
  elsif @operation == "multiply"
    soloution = @number1 * @number2
  elsif @operation == "divide"
  soloution = @number1 / @number2
  elsif @operation == "subtract"
    soloution = @number1 - @number2
end
soloution.to_s
end



end
