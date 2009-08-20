require File.dirname(__FILE__) + '/../spec_helper'

describe DevicesController do
  describe "get index" do
    it "should return json" do
      controller.stub!(:current_user) {User.make_unsaved}
      device = Device.make_unsaved
      Device.stub!(:paginate).and_return [device]

      get :index, :format => "js"
      response.should have_text([device].to_json(:methods => :last_reading) )
    end
  end
end