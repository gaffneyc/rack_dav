require 'spec_helper'

describe RackDAV::FileResource do

  describe "#get" do
    context "with a directory" do
      # it "sets a compliant rack response"
    end
  end

  it "defaults option :root to current directory" do
    path = File.expand_path("../../bin", __FILE__)

    Dir.chdir(path) do
      resource = RackDAV::FileResource.new("/")
      resource.options[:root].should == path
    end
  end
end
