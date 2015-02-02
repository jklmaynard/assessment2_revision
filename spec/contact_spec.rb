require('spec_buddy')

describe(Contact) do
  it {should have_many(:phones)}
end
