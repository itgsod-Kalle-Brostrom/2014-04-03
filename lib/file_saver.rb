class FileSaver

  def save(hash)
    output = "#{hash[:type]}:\n"
    output  << "  width: #{hash[:width]}\n"
    output  << "  height: #{hash[:height]}\n"
    output  << "  area: #{hash[:area]}\n"
    output  << "  colour: #{hash[:colour]}\n"
    File.open('geometry.txt', 'a+') do |file|
      file.puts output
    end
  end

end