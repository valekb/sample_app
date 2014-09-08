require 'rails_helper'

RSpec.describe "LayouLinks", :type => :request do
  describe "GET /layou_links" do
    it "works! (now write some real specs)" do
      get layou_links_index_path
      expect(response.status).to be(200)
    end
  end
end
