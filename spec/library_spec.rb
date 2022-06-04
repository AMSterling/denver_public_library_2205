require './lib/library'
require_relative '../lib/author'

RSpec.describe Library do
  xit "exists" do
    dpl = Library.new("Denver Public Library")

    expect(dpl).to be_instance_of Library
  end

  xit "has a name" do
    dpl = Library.new("Denver Public Library")

    expect(dpl.name).to eq("Denver Public Library")
  end

  xit "stores an array of books" do
    dpl = Library.new("Denver Public Library")

    expect(dpl.books).to eq([])
  end

  xit "stores an array of authors" do
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

    expect(dpl.authors).to eq([])

    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    expect(dpl.authors).to eq([charlotte_bronte, harper_lee])
  end

  xit "stores a collection of books" do
    dpl = Library.new("Denver Public Library")

    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")

    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    expect(dpl.books).to eq([jane_eyre, professor, villette, mockingbird])
  end
end