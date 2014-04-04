require 'rspec'
require_relative '../lib/file_saver'

describe FileSaver do

  before do
    File.delete('geometry.txt') if File.exist?('geometry.txt')
  end

  after(:all) do
    File.delete('geometry.txt') if File.exist?('geometry.txt')
  end

  it 'should create a geometry file' do
    File.exist?('geometry.txt').should be false
    fs = FileSaver.new
    fs.save({})
    File.exist?('geometry.txt').should be true
  end

  it 'should save a rectangle to the geometry file' do
    correct = File.read('./spec/geometry_example.txt')
    fs = FileSaver.new
    fs.save({type: 'Rectangle', width:4, height: 3, area: 12, colour: 'red'})
    generated = File.read('geometry.txt')
    generated.should match correct
  end

  it 'should save many rectangles to the geometry file' do
    correct = File.read('./spec/geometry_example2.txt')
    fs = FileSaver.new
    fs.save({type: 'Rectangle', width:4, height: 3, area: 12, colour: 'red'})
    fs.save({type: 'Rectangle', width:4, height: 3, area: 12, colour: 'red'})
    fs.save({type: 'Rectangle', width:4, height: 3, area: 12, colour: 'red'})
    generated = File.read('geometry.txt')
    generated.should match correct
  end
end                  #file