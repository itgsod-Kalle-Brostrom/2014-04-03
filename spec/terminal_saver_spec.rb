require 'rspec'
require 'stringio'
require_relative '../lib/terminal_saver'

describe 'saving a rectangle' do

  before do
    $stdout = StringIO.new
  end

  after(:all) do
    $stdout = STDOUT
  end

  it 'should print the rectangle to the commenand prompt' do
    ts = TerminalSaver.new
    ts.save({type: 'Rectangle', width:4, height: 3, area: 12, colour: 'red'})
    correct_output = "Rectangle:\n  width: 4\n  height: 3\n  area: 12\n  colour: red"
    #STDOUT.should_receive(:print).with(correct_output)
    expect($stdout.string).to match(correct_output)
  end
end