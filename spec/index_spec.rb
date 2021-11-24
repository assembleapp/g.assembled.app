require "spec_helper"

describe "Index" do
  it "should respond to GET" do
    get "/"

    expect(last_response).to be_ok
  end

  describe "contents" do
    before { get "/" }
    subject { page }

    it { should have_title("Grace Youngblood") }
    it { should match("I'm a developer and designer") }
    it { should have_link("Sketches", "/sketches") }
    it { should have_link("Projects", "/projects") }
  end
end
