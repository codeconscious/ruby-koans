# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # I sought some clarity in what constitutes a proper triangle.
  # Unfortunately, I stumbled upon this complete answer on StackOverflow at
  # https://stackoverflow.com/a/12062767/11767771, so I just used it as-is
  # after examining it and ensuring I understood it. (It's pretty clean!)
  a, b, c = [a, b, c].sort
  raise TriangleError if a <= 0 || a + b <= c
  [nil, :equilateral, :isosceles, :scalene][[a, b, c].uniq.size]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
