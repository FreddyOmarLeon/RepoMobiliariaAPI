require 'rails_helper'

RSpec.describe "Inmuebles", type: :request do
  describe "GET /inmuebles" do
    it "works! (now write some real specs)" do
      get inmuebles_path
      expect(response).to have_http_status(200)
    end
  end
end
