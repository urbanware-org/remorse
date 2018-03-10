# *ReMorse*

**Table of contents**
*   [Definition](#definition)
*   [Details](#details)
*   [Requirements](#requirements)
*   [Usage](#usage)

----

## Definition

Simple *Python* module that allows converting a string into Morse code and vice versa.

[Top](#)

## Details

The definition above actually explains it all. Simple and easy to use.

Furthermore, the module requires a shell that uses UTF-8 encoding, otherwise it will crash due to encoding errors.

The code was written on *Linux* and has only been tested on that platform, yet.

Feel free to modify!

[Top](#)

## Requirements


Notice that this module uses the *Python* 3.x framework. There is no official version for *Python* 2.x, but if you need that for whatever reason, you can try refactoring the syntax from *Python* 3.x to version 2.x using the *3to2* tool.

However, there is no guarantee that this works properly or at all.

[Top](#)

## Usage

### Encode a string into Morse code

So, to convert the string "Hello" into Morse code, type:

```python
morse = remorse.string2morse("Hello")
```

Supported characters are letters, numbers and spaces. All others will be ignored. The Morse code will be returned using UTF-8 characters.

### Decode Morse code into a string

The other way around, to convert Morse code into a string, type:

```python
string = remorse.morse2string(".... . .-.. .-.. ---")
```

Notice that you can use different characters to enter the Morse code:

*   The dots can either be the ordinary ones (`.`) or the UTF-8 character `·`.
*   The dashes can be hyphens (`-`), underscores (`_`) or the UTF-8 character `−`.

All other characters will be ignored. However, invalid characters inside a Morse code letter will lead to an incorrect output.

No matter which characters you use, they will be converted into the UTF-8 ones and then decoded to get the string.

[Top](#)
