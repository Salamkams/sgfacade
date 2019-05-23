class PagesController < ApplicationController
  def home
    @today = Date.today + 1
    @projects = ["Expo2020", "JBR", "JLT", "Marina"]
  end

  def team
    @members = ["Karim", "Musab", "Hassan"]
  end
  def join_us
    render plain: "Send us a mail"
  end

end
