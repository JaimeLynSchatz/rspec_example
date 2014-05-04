require 'spec_helper'

describe "Library object" do

  before :all do
    lib_obj = [
      Book.new("Javascript: The Good Parts", "Douglas Crockford", :development),
      Book.new("Designing with Web Standards", "Jeffrey Zeldman", :design),
      Book.new("Don't Make me Think", "Steve Krug", :usability),
      Book.new("Javascript Patterns", "Stoyan Stefanov", :development),
      Book.new("Responsive Web Design", "Ethan Marcotte", :design)
    ]
    File.open "book.yml", "w" do |f|
      f.write YAML::dump lib_obj
    end
  end

  before :each do
    @lib = Library.new "books.yml"
  end

end
