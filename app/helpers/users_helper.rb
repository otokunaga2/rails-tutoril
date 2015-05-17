module UsersHelper
  #与えられたユーザーのGravatar (http://gravatar.com/) を返す。
  def gravatar_for(user)
    gravater_id = Digest::MD5::hexdigest(user.email.downcase)
    gravater_url = "https://secure.gravatar.com/avatar/#{gravater_id}"
    image_tag(gravater_url, alt: user.name, class: "gravatar")
  end
end
