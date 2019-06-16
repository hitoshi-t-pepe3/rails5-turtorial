class ApplicationController < ActionController::Base
  def hello
    render html: "hogehoge"
  end
end
