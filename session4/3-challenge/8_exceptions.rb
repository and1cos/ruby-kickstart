# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solutions file, try to understand the code, then close the file, come back here, and try again to solve it.

# Write a method that receives a number 1 through 5.
# Depending on the value of the number, it will raise
# some particular type of exception.
#
# HINT:
#   All exceptions and errors are descendants of Exception.
#   (Exception is listed as an ancestor)
#
# Examples:
#   exception_raiser 1   # =>   #<RuntimeError: No 1s allowed!>
#   exception_raiser 2   # =>   #<ArgumentError: No 2s allowed!>
#   exception_raiser 3   # =>   #<Exception: No 3s allowed!>
#   exception_raiser 4   # =>   #<SyntaxError: No 4s allowed!>
#   exception_raiser 5   # =>   #<RubyKickstartException: No 5s allowed!>

class RubyKickstartException < Exception
end

def exception_raiser(num)
  if num == 1 then raise "Number 1 is allowed!"
  elsif num == 2 then raise ArgumentError, "Number 2 is allowed!"
  elsif num == 3 then raise Exception, "NUmber 3 is allowed!"
  elsif num == 4 then raise SyntaxError, "Number 4 is allowed!"
  elsif num == 5 then raise RubyKickstartException, "Number 5 is allowed!"
  end
end

rake 4:8
