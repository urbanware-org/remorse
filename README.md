# *ReMorse*

**Table of contents**
*   [Definition](#definition)
*   [Details](#details)
*   [Requirements](#requirements)
*   [Usage](#usage)
*   [Contact](#contact)

----

## Definition

Simple module for *Julia* and *Python* that allows converting a string into Morse code and vice versa.

[Top](#remorse)

## Details

The definition above actually explains it all. Simple and easy to use.

However, the module requires a shell that uses UTF-8 encoding, otherwise it will crash due to encoding errors.

The code was written on *Linux* and has only been tested on that platform, yet.

Feel free to modify!

[Top](#remorse)

## Requirements

### *Julia*

This module was written using *Julia* 1.1.0, but should also work with earlier and, of course, newer versions.

### *Python*

Notice that this module uses the *Python* 3.x framework. There is no official version for *Python* 2.x, but if you need that for whatever reason, you can try refactoring the syntax from *Python* 3.x to version 2.x using the *3to2* tool.

However, there is no guarantee that this works properly or at all.

[Top](#remorse)

## Usage

### Encode a string into Morse code

Supported characters are letters, numbers and spaces. All others will be ignored. The Morse code will be returned using UTF-8 characters.

#### *Julia*

```julia
morse = string2morse("Hello")
```

#### *Python*

```python
morse = remorse.string2morse("Hello")
```

### Decode Morse code into a string

You can use different characters to enter the Morse code:

*   The dots can either be the ordinary ones (`.`) or the UTF-8 character `·`.
*   The dashes can be hyphens (`-`), underscores (`_`) or the UTF-8 character `−`.

All other characters will be ignored. However, invalid characters inside a Morse code letter will lead to an incorrect output.

No matter which characters you use, they will be converted into the UTF-8 ones and then decoded to get the string.

#### *Julia*

```julia
string = morse2string(".... . .-.. .-.. ---")
```

#### *Python*

```python
string = remorse.morse2string(".... . .-.. .-.. ---")
```

[Top](#remorse)

## Contact

Any suggestions, questions, bugs to report or feedback to give?

You can contact me by sending an email to [dev@urbanware.org](mailto:dev@urbanware.org) or by opening a *GitHub* issue (which I would prefer if you have a *GitHub* account).

[Top](#remorse)
