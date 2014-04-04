require_relative 'terminal_saver'
require_relative 'file_saver'
require_relative 'rectangle'

r1 = Rectangle.new(12,12, TerminalSaver.new)
r2 = Rectangle.new(17,12, FileSaver.new)

r1.save
r2.save