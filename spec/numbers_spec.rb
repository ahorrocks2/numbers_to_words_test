require('rspec')
require('numbers')

describe('Fixnum#numbers') do
  it('Turns one digit into a written word') do
    expect((1).numbers()).to(eq("one"))
  end
end
