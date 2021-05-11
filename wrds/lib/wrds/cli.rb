


class CLI
  def call
    Display.message(Wrds::WELCOME_MESSAGE)
    Display.menu(Wrds::CONSTRAINTS)
  end

  def process
    API.input
    API.request
    API.process
    API.response

  end


  def end
  end





    
