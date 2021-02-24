require 'rails_helper'

RSpec.describe "ScratchSessions", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/scratch_sessions/new"
      expect(response).to have_http_status(:success)
    end
  end

end
