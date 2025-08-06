class ApplicationController < ActionController::Base
  # 開発環境ではすべてのブラウザを許可（制限なし）
  # 本番環境では modern なブラウザのみ許可
  unless Rails.env.development?
    allow_browser versions: :modern
  end
end
