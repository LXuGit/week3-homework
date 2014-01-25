class DiceController < ApplicationController
  def home
  	@target = 0
  	@reroll = 0
  end

  @@goal = 0

  def roll                  
  	@die1 = 1 + rand(6)
  	@die2 = 1 + rand(6)
  	sum = @die1 + @die2

  	@target = params[:goal]
  	@reroll = params[:attempt]

  	if @reroll == '0'             #roll the die for the first time
  		if sum == 7 || sum == 11
  			render 'win' and return
  		elsif sum == 2 || sum == 3 || sum == 12
  			render 'lose' and return
  		else
  			@reroll = '1'
  			@@goal = sum
  			@target_param = @@goal
  			render 'tryagain' and return
  		end
  	else
  		if @@goal == sum
  			render 'win' and return
  		elsif sum == 7
  			render 'lose' and return
  		else
  			@target_param = @@goal
  			render 'tryagain' and return
  		end
  	end

  				

  end

  def reroll
  end
end
