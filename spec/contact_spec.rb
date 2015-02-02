require('spec_buddy')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#add_contact') do
    it("will add a contact into an array of all contacts") do
      test_contact = Contact.new({:name => "Bob", :number => []})
      test_contact.add_contact()
      expect(Contact.all()).to(eq([test_contact]))
    end

    it("will save multiple contacts into an array") do
      test_contact = Contact.new({:name => "Bob", :number => "234-234-2345"})
      test_contact1 = Contact.new({:name => "Shelly", :number => "235-235-2356"})
      test_contact.add_contact()
      test_contact1.add_contact()
      expect(Contact.all()).to(eq([test_contact, test_contact1]))
    end
  end

  describe('#id') do
    it("will output an object's id within the @@phone_book array") do
      test_contact = Contact.new({:name => "Bob", :number => "234-234-2345"})
      test_contact.add_contact()
      test_contact1 = Contact.new({:name => "Shelly", :number => "235-235-2356"})
      test_contact1.add_contact()
      expect(test_contact.id()).to(eq(1))
      expect(test_contact1.id()).to(eq(2))
    end
  end

  describe('.find') do
    it("returns a contact by its ID number") do
      bob_contact = Contact.new({:name => "Bob", :number => "234-234-2345"})
      bob_contact.add_contact()
      shelly_contact = Contact.new({:name => "Shelly", :number => "235-235-2356"})
      shelly_contact.add_contact()
      expect(Contact.find(bob_contact.id())).to(eq(bob_contact))
    end
  end

  describe('#get_number') do
    it("returns the :number when queried") do
      bob = Contact.new({:name => "Bob"})
      bob.add_contact()
      bob_number = Phone.new({:number => "235-235-2356"})
      bob.add_number(bob_number)
      expect(bob.get_number()).to(eq([bob_number]))
    end
  end
end
