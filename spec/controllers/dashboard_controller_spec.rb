require 'spec_helper'

describe DashboardController do

  describe "GET 'index'" do
    let(:projects) do
      double(:projects)
    end

    before do
      Project.stub(:all).and_return(projects)
      get 'index'
    end

    it "returns http success" do
      expect(response).to be_success
    end

    it "renders index.html" do
      expect(response).to render_template("index")
    end

    it "assigns projects" do
      expect(assigns(:projects)).to eql(projects)
    end
  end

end
