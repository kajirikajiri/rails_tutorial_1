class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # yosonosaitonokinouwoyobidasukougeki wo husegu

  def hello
    render html: "hello,world"
  end
end
