#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# ============================================================================
# ReMorse - Morse code encode/decode module
# Copyright (C) 2017 by Ralf Kilian
# Distributed under the MIT License (https://opensource.org/licenses/MIT)
#
# Website: http://www.urbanware.org
# GitHub: https://github.com/urbanware-org/remorse
# ============================================================================

__version__ = "1.0.0"

morse_alphabet = {"a" : "·−",    "b" : "−···",  "c" : "−·−·",  "d" : "−··",
                  "e" : "·",     "f" : "··−·",  "g" : "−−·",   "h" : "····",
                  "i" : "··",    "j" : "·−−−",  "k" : "−·−",   "l" : "·−··",
                  "m" : "−−",    "n" : "−·",    "o" : "−−−",   "p" : "·−−·",
                  "q" : "−−·−",  "r" : "·−·",   "s" : "···",   "t" : "−",
                  "u" : "··−",   "v" : "···−",  "w" : "·−−",   "x" : "−··−",
                  "y" : "−·−−",  "z" : "−−··",  "1" : "·−−−−", "2" : "··−−−",
                  "3" : "···−−", "4" : "····−", "5" : "·····", "6" : "−····",
                  "7" : "−−···", "8" : "−−−··", "9" : "−−−−·", "0" : "−−−−−"}

def get_version():
    """
        Return the version of this module.
    """
    return __version__


def string2morse(string):
    """
        Convert (encode) a string into Morse code.
    """
    output = ""

    while (" " * 2) in string:
        string = string.replace((" " * 2), " ")

    for char in string.lower().strip():
        if char == " ":
            output += (" " * 3)
            continue
        else:
            output += morse_alphabet.get(char, "") + " "

    return output.strip()

def morse2string(morse_code):
    """
        Convert (decode) Morse code into a string.
    """
    output = ""

    morse_code = \
        morse_code.replace(".", "·").replace("-", "−").replace("_", "−")

    m = {v: k for k, v in morse_alphabet.items()}
    for word in morse_code.split(" " * 3):
        for letter in word.split(" "):
            output += m.get(letter, "")
        output += " "

    return output.strip()

# EOF

