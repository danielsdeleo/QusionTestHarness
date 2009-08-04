require "activerecord"

class Working < Workling::Base
  
  def rock_out(options)
    logger.info("rocking out: #{options}")
  end
  
end