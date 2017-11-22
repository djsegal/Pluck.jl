# Pluck.jl

[![Build Status](https://travis-ci.org/djsegal/Pluck.jl.svg?branch=master)](https://travis-ci.org/djsegal/Pluck.jl) [![codecov.io](http://codecov.io/github/djsegal/Pluck.jl/coverage.svg?branch=master)](http://codecov.io/github/djsegal/Pluck.jl?branch=master)

## Usage

#### given:

```
cur_array = [
  404,
  123,
  42
]
```

#### pluck(cur_array)

```julia

pluck(cur_array)
# => 42

pluck(cur_array)
# => 404

pluck(cur_array)
# => 42

pluck(cur_array)
# => 123

...
```

#### pluck!(cur_array)

```julia

pluck!(cur_array)
# => 404

pluck!(cur_array)
# => 123

pluck!(cur_array)
# => 42

pluck(cur_array)
ERROR: BoundsError

```
