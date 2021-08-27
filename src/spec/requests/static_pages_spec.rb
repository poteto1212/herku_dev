require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /home" do
    #HTTP通信のテスト
    it "/homeルーティングで画面が正常に表示される" do
      get "/static_pages/home"
      expect(response).to have_http_status(:success)
    end
  
  end

  describe "GET /help" do
    it "/heipルーティングで画面が正常に表示される" do
      get "/static_pages/help"
      expect(response).to have_http_status(:success)
    end
  end

end
