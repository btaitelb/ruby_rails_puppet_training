module Omnomnivore
  def omnomname(name_extension)
    define_method "name" do
      @name + name_extension
    end
  end
end
