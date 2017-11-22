using Pluck
using Base.Test

# ------------
#  test array
# ------------

init_array = [
  404,
  123,
  1,
  -1,
  0,
  42
]

# ------------
#  test pluck
# ------------

cur_array = copy(init_array)

for cur_index in 1:( 5 * length(cur_array) )
  @test in(pluck(cur_array), init_array)
end

# -------------
#  test pluck!
# -------------

cur_array = copy(init_array)

actual_values = []

for cur_index in 1:length(cur_array)
  cur_value = pluck!(cur_array)
  @test in(cur_value, init_array)
  push!(actual_values, cur_value)
end

@test_throws BoundsError pluck!(cur_array)

@test sort(init_array) == sort(actual_values)

# ------------
#  test dicts
# ------------

cur_dict = Dict(
  "foo" => +7,
  "bar" => -1
)

@test in(pluck(keys(cur_dict)), keys(cur_dict))

@test in(pluck(values(cur_dict)), values(cur_dict))

@test_throws MethodError pluck!(keys(cur_dict))

@test_throws MethodError pluck!(values(cur_dict))
