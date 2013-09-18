This is a vim plugin that helps you find hexadecimal bit patterns in your
files.

vim-hexsearch is written in pure vimscript (no need for Python nor Perl).

Commands
--------
A single command is provided: `:HexSearch`.

Example uses
------------

* `:HexSearch 0abde8` : look forward for three consecutive bytes with value
  0x0a, 0xbd and 0xe8
* `:HexSearch! 00.52` : look backwards for a nul byte, followed by any byte and
  followed by byte 0x52

Installation
------------

If you have the Pathogen plugin installed or any other plugin manager, then
just copy this filetree into a subfolder of your Bundle folder.

Otherwise, copy the contents of the `doc/`, `plugin/` and `autoload/` folders
to resp.  `~/.vim/doc`, `~/.vim/plugin` and `~/.vim/autoload` respectively.

Development
-----------

The main git repository for this plugin is at
`http://github.com/salsifis/vim-hexsearch`

License
-------

zlib/libpng license.

Copyright (c) 2013 Benoit Mortgat

This software is provided 'as-is', without any express or implied warranty. In
no event will the authors be held liable for any damages arising from the use
of this software.

Permission is granted to anyone to use this software for any purpose, including
commercial applications, and to alter it and redistribute it freely, subject to
the following restrictions:

1. The origin of this software must not be misrepresented; you must not claim
   that you wrote the original software. If you use this software in a product,
an acknowledgment in the product documentation would be appreciated but is not
required.

2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.

3. This notice may not be removed or altered from any source distribution.
