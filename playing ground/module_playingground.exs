defmodule ModulePlayground do
#defmodule is a macro and not a keyword.
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias ModulePlayground.Misc.Util.Math, as: MyMath

  require Integer

  def say_here do
    inspect("I'm Here")
  end

  def inspect(param1) do
    puts ("Starting output")
    puts (param1)
    puts ("Ending output")
  end

  def print_sum do
    MyMath.add(1,2)
  end


  def print_iseven(num) do
   puts "Is #{num} even? #{Integer.is_even(num)}"
  end
end
