

require_relative 'spec_helper'

# describe "test index" do
#   it "" do
#   end
# end
#
# describe "test show" do
#   it "" do
#   end
# end

describe "test new" do 
  it "should increase the count by one" do
    @length = Highlight.all.length
    @h = Highlight.new
    expect(Highlight.all.length).to eq(@length + 1)
  end
end

# describe "test edit" do
#   it "should change a value" do
#   end
# end

describe "test create" do 
  it "increase the count by one" do
    @length = Highlight.all.length
    @h = Highlight.new
    expect(Highlight.all.length).to eq(@length + 1)
  end
end

# describe "test update" do
#   it "should change a value" do
#   end
# end

describe "test destroy" do 
  it "should decrease the count by one" do
    @length = Highlight.all.length
    Highlight.find(:last).destroy
    expect(Highlight.all.length).to eq(@length - 1)
  end
end


