class ApplicationController < ActionController::Base

  # ＝＝＝＝＝＝＝＝ここからdevise機能＝＝＝＝＝＝＝＝
  # nameでのデータ操作がsign_upの前に実行される
  before_action :configure_permitted_parameters, if: :devise_controller?
  # ログイン認証されていなければ、ログイン画面へリダイレクトする
  before_action :authenticate_user!

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  # ＝＝＝＝＝＝＝＝ここまでdevise機能＝＝＝＝＝＝＝＝

end
