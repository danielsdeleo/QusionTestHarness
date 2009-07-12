class HomeController < ApplicationController
  
  def index
    @random_string = rand(2**32).to_s(16)
    queue = Qusion.channel.queue("qusion")
    queue.publish(@random_string)
  end
  
end
