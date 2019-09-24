#!/usr/bin/env julia
# -*- coding: utf-8 -*-

# ============================================================================
# ReMorse - Morse code encode/decode module for Julia
# Copyright (C) 2019 by Ralf Kilian
# Distributed under the MIT License (https://opensource.org/licenses/MIT)
#
# GitHub: https://github.com/urbanware-org/remorse
# GitLab: https://gitlab.com/urbanware-org/remorse
# ============================================================================

__version__ = "1.0.0"

MORSE_ALPHABET = Dict([
            ("a", "·−"), ("b", "−···"), ("c", "−·−·"), ("d", "−··"),
            ("e", "·"), ("f", "··−·"), ("g", "−−·"), ("h", "····"),
            ("i", "··"), ("j", "·−−−"), ("k", "−·−"), ("l", "·−··"),
            ("m", "−−"), ("n", "−·"), ("o", "−−−"), ("p", "·−−·"),
            ("q", "−−·−"), ("r", "·−·"), ("s", "···"), ("t", "−"),
            ("u", "··−"), ("v", "···−"), ("w", "·−−"), ("x", "−··−"),
            ("y", "−·−−"), ("z", "−−··"), ("1", "·−−−−"), ("2", "··−−−"),
            ("3", "···−−"), ("4", "····−"), ("5", "·····"), ("6", "−····"),
            ("7", "−−···"), ("8", "−−−··"), ("9", "−−−−·"), ("0", "−−−−−")])


function get_version()
    """
        Return the version of this module.
    """
    return __version__
end

function string2morse(string)
    """
        Convert (encode) a string into Morse code.
    """
    output = ""

    while occursin("  ", string)
        string = replace(string, "  " => " ")
    end

    for char in lowercase(strip(string))
        if "$char" == " "
            output = "$output   "
            continue
        end
        try
            char = MORSE_ALPHABET["$char"]
            output = "$output $char"
        catch
            continue
        end
    end

    return strip(output)
end


function morse2string(morse_code)
    """
        Convert (decode) Morse code into a string.
    """
    output = ""

    while occursin("   ", morse_code)
        morse_code = replace(morse_code, "   " => "  ")
    end

    morse_code = replace(morse_code, "." => "·")
    morse_code = replace(morse_code, "-" => "−")
    morse_code = replace(morse_code, "_" => "−")
    morse_code = replace(morse_code, "  " => " ~ ")

    morse = Dict(value => key for (key, value) in MORSE_ALPHABET)
    chars = split(morse_code)
    for char in chars
        if "$char" == "~"
            output = "$output "
            continue
        end
        try
            char = morse["$char"]
            output = "$output$char"
        catch
            continue
        end
    end

    return strip(output)
end

# EOF
