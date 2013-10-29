require 'spec_helper'

describe ProjectsController do
  describe "POST 'create'" do
    context "valid project" do
      let(:project) do
        build(:project)
      end

      let(:send_data) do
        post 'create', project: project.as_json
      end

      it "returns http success" do
        send_data
        expect(response).to be_redirect
      end

      it "saves new project" do
        expect do 
          send_data
        end.to change{Project.count}.by(1)
      end
    end
  end
end
