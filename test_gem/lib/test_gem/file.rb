module TestGem

  class  File
    puts "class #{self} defined"

    def File.first fileName
      results = []
      open(fileName).each do |line|
        results << line
      end
      p "The file has #{results.size} lines."
      p "The first line is: #{results.first}."
      results.first.chomp
    end

    def File.last fileName
      results = []
      open(fileName).each do |line|
        results << line
      end
      p "The file has #{results.size} lines."
      p "The last line is: #{results.last}."
      results.last.chomp
    end
  end

end
