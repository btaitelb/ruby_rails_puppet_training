class MyFile
  attr_accessor :content,
                :name,
                :permissions,
                :owner,
                :group
  
  def initialize(content)
    @content = content
  end

  def permissions=(perms)
    if @owner == "root"
      puts "No Way!"
    else
      @permissions = perms
    end
  end
  
  # def content
  #   @content
  # end

  # def content=(val)
  #   @content = val
  # end
end

myfile = MyFile.new("hello, files")
myfile.content = "hello, myfile"
puts myfile.content

myfile.name = "file.txt"
puts myfile.name
