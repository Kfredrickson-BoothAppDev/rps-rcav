class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
    def play_rock
      @comp_move = ["rock", "paper", "scissors"].sample
      
      if @comp_move == "rock"
        @outcome = "tied"
      elsif @comp_move == "paper"
        @outcome =  "lost"
      else
        @outcome = "won"
      end
      
      render({ :template => "game_templates/user_rock.html.erb" })
    end 


end
