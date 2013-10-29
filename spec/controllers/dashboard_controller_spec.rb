require 'spec_helper'

describe DashboardController do

  describe "GET 'index'" do
    let(:projects) do
      mock(:projects)
    end

    before do
      Project.stub(:all).and_return(projects)
    end

    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it "renders index.html" do
      get 'index'
      expect(response).to render_template("index")
    end

    it "assigns projects" do
      get 'index'
      expect(assigns(:projects)).to eql(projects)
    end
  end

end
