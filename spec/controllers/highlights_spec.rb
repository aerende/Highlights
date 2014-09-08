

require_relative '../spec_helper'

describe "test index" do
  it "should index all values created" do
    @h1 = Highlight.create(title: "one", description:"this")
    @h2 = Highlight.create(title: "two", description:"that")
    highlights_path.should == "/highlights"
    within('td') do
      page.should have_text('this')
      page.should have_text('that')
    end
  end
end

describe "test show" do
   it "should show highlight just created" do
   @h1 = Highlight.create(title: "show")
   @h2 = Highlight.create(title: "dont")
   highlights_path @h1
   within('p') do
     page.should have_text('show')
     page.should_not have_text('dont')
   end
  end
end

describe "test new" do 
  it "should increase the count by one" do
    @h = Highlight.new
    expect(@h).to be_a(Highlight)
  end
end

describe "test edit" do
  it "should change a value" do
    @h = Highlight.create(title: "this", description:"tell me")
    edit_highlight_path @h.id
    within('input') do
      page.should have_text('tell me')
    end
  end
end

describe "test create" do 
  it "increase the count by one" do
    @h = Highlight.create
    @length = Highlight.all.length
    @h = Highlight.create
    expect(Highlight.all.length).to eq(@length + 1)
  end
end

describe "test update" do
  it "should change a value" do
    @h = Highlight.create(title: "this")
    @h.update(title: "that")
    expect(@h.title).to eq("that")
  end
end

describe "test destroy" do 
  it "should decrease the count by one" do
    @h = Highlight.create
    @length = Highlight.all.length
    Highlight.find(@h.id).destroy
    expect(Highlight.all.length).to eq(@length - 1)
  end
end


