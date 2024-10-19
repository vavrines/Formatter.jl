using Formatter

function main()
    args = parse_cmd()

    action = args["action"][1]
    if action == "config"
        generate_config(args)
    elseif action == "format"
        format_file(args)
    else
        @warn "invalid action: $action"
        @warn "no action taken"
    end

    return nothing
end

main()
