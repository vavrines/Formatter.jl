module Formatter

using ArgParse
using JuliaFormatter

function parse_cmd()
    set = ArgParseSettings()

    @add_arg_table(set, "action", action => :store_arg, nargs => '*', help => "action to be taken")
    @add_arg_table set begin
        "--config", "-c"
        action = :store_arg
        nargs = '*'
        help = "config"
    end

    return parse_args(set)
end

function format_file(args)
    file = args["action"][2]
    return format(file)
end

function generate_config(args)
    file = ".JuliaFormatter.toml"
    f = open(file, "w")
    begin
        write(f, "always_for_in = true\n")
        write(f, "remove_extra_newlines = true\n")
        write(f, "always_use_return = true\n")
        write(f, "whitespace_in_kwargs = false\n")
        write(f, "format_docstrings = true\n")
        write(f, "separate_kwargs_with_semicolon = true\n")
        write(f, "disallow_single_arg_nesting = true\n")
        write(f, "format_markdown = true")
    end
    close(f)

    return nothing
end

export parse_cmd
export format_file
export generate_config

end
