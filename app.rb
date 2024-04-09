require "sinatra"
require "sinatra/reloader"

@hashrolls = { 1 => "rock!", 2 => "paper!", 3 => "scissors!"}

def winner(myroll, computer_roll)

  if myroll == computer_roll
    return "We tied!"
  else

    if myroll == 1

      if computer_roll == 2
        return "We lost!"
      elsif computer_roll == 3
        return "We won!"
      end

    elsif myroll == 2
      if computer_roll == 1
        return "We won!"
      elsif computer_roll == 3
        return "We lost!"
      end
    else
      if computer_roll == 2
        return "We won!"
      elsif computer_roll == 1
        return "We lost!"
      end

    end

  end

end

get("/") do
  erb(:main)  
end

get("/rock") do
  @hashrolls = { 1 => "rock!", 2 => "paper!", 3 => "scissors!"}

  @computer_roll = rand(1..3)
  @myroll = 1
  @result = winner(@myroll, @computer_roll)

  erb(:rock)
end

get("/paper") do
  @hashrolls = { 1 => "rock!", 2 => "paper!", 3 => "scissors!"}

  @computer_roll = rand(1..3)
  @myroll = 2
  @result = winner(@myroll, @computer_roll)

  erb(:paper)
end

get("/scissors") do
  @hashrolls = { 1 => "rock!", 2 => "paper!", 3 => "scissors!"}

  @computer_roll = rand(1..3)
  @myroll = 3
  @result = winner(@myroll, @computer_roll)

  erb(:scissors)
end
