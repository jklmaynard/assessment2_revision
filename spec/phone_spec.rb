require('spec_buddy')

describe(Phone) do
  it {should belong_to(:contact)}  
end