# Formatter.jl

To add the package:
```julia
julia> ]
(v1.11) pkg> dev https://github.com/vavrines/Formatter.jl
```

To generate config file:
```bash
julia ~/.julia/dev/Formatter/main.jl config
```

To format a julia script:
```bash
julia ~/.julia/dev/Formatter/main.jl format example.jl
```

To format all julia scripts in the current directory:
```bash
julia ~/.julia/dev/Formatter/main.jl format .
```
