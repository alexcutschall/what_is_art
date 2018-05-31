class UserPresenter < BasePresenter

  def profile_pic
    if @model.profile_pic.url == "/profile_pics/original/missing.png"
      "https://images.duckduckgo.com/iu/?u=http%3A%2F%2F2.bp.blogspot.com%2F-Jkpn4Ghz1Os%2FTkxlMiUN6WI%2FAAAAAAAAANk%2F7e4iMQcDsTg%2Fs1600%2Ffake-facebook-profile-picture-funny-batman-pic.jpg&f=1"
    else
      @model.profile_pic.url
    end
  end

  def username
    @model.username.capitalize
  end

end
