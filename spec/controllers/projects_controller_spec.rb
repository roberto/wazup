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

      it "returns http redirect" do
        send_data
        expect(response).to be_redirect
      end

      it "saves new project" do
        expect do 
          send_data
        end.to change{Project.count}.by(1)
      end

      it "redirects to dashboard page"
    end

    context "invalid project" do
      it "returns http invalid data"
      it "doesn't save project"
    end
  end

  describe "GET 'show'" do
    describe "format js" do
      context "project has been found" do
        it "returns http success"
        it "renders project area"
      end

      context "project hasn't been found" do
        it "returns http error"
        it "renders project area"
      end
    end
  end
end
