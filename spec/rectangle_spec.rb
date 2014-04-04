require 'rspec'
require 'rspec/mocks'
require_relative '../lib/rectangle'

describe Rectangle do

  it 'should return the correct area' do
    r = Rectangle.new(4, 3, nil)
    r.area.should be (12)
  end

  it 'should have a colour' do
    r = Rectangle.new(1,1, nil)
    r.colour = 'red'
    r.colour.should match('red')
    r.colour = 'cyan'
    r.colour.should match('cyan')
  end

  it 'bla' do
    saver = double()
    r = Rectangle.new(4, 3, saver)
    r.colour = 'red'
    correct_hash = {type: 'Rectangle',  width: 4,  height: 3,  area: 12,  colour: 'red'}
    expect(saver).to receive(:save) {correct_hash}
    r.save
  end

end