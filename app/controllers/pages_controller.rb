class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batmanvssuperman
  	@voto = Voto.new
  end

end
