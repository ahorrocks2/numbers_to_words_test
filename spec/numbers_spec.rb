require('rspec')
require('numbers')

describe('Fixnum#numbers') do
  it('Turns one digit into a written word') do
    expect((1).numbers()).to(eq("one"))
  end

  it('Turns two digits into written words') do
    expect((20).numbers()).to(eq("twenty"))
  end
end
