require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

get("/homepage") do
  "
  <p></p>


  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.</p>
  "
  erb(:elephant)
end

get("/rock") do

counter=["rock","paper","scissors"].sample

if counter=="rock"
  result="We tied"
elsif counter=="paper"
  result="We lose"
else counter=="scissors"
  result="We win"
end

@outcome = "We played rock! They played #{counter}! #{result}!"

erb(:rock)

end


get("/paper") do

  counter=["rock","paper","scissors"].sample
  
  if counter=="paper"
    result="We tied"
  elsif counter=="scissors"
    result="We lose"
  else counter=="rock"
    result="We win"
  end
  
  @outcome = "We played paper! They played #{counter}! #{result}!"
  
  erb(:paper)

  end

  get("/scissors") do
    
    counter=["rock","paper","scissors"].sample
    
    if counter=="scissors"
      result="We tied"
    elsif counter=="rock"
      result="We lose"
    else counter=="paper"
      result="We win"
    end
    
    @outcome = "We played scissors! They played #{counter}! #{result}!"
    
    erb(:paper)
    
    end
    
  