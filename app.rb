require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

get("/") do
  
  erb(:elephant)
end

get("/rock") do

counter=["rock","paper","scissors"].sample

if counter=="rock"
  result="We tied"
elsif counter=="paper"
  result="We lost"
else counter=="scissors"
  result="We won"
end

@counter=counter
@result=result

erb(:rock)

end


get("/paper") do

  counter=["rock","paper","scissors"].sample
  
  if counter=="paper"
    result="We tied"
  elsif counter=="scissors"
    result="We lost"
  else counter=="rock"
    result="We won"
  end
  
  @counter=counter
  @result=result
  
  erb(:paper)

  end

  get("/scissors") do
    
    counter=["rock","paper","scissors"].sample
    
    if counter=="scissors"
      result="We tied"
    elsif counter=="rock"
      result="We lost"
    else counter=="paper"
      result="We won"
    end
    
    @counter=counter
    @result=result
    
    erb(:paper)
    
    end
    
  