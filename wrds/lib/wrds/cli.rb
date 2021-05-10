


class CLI
  def call
    Display.welcome
    start
  end


  def start
    Display.options
    Ask.which_option
    Display.results
    Ask.which_option
    Display.result
    Ask.continue_or_quit
  end




    
