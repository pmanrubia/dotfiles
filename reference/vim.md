 | |
---|---|---
`w` | MOVE| Start of the word
`e` | MOVE| End of the word
`b` | MOVE| Beginning of the word
`3w`| MOVE| Third word words
`0`| MOVE|Beginning of line
`$`| MOVE|End of line
`*`| MOVE|Next occurrence under cursor
`#`| MOVE|Prev occurrence under cursor
`34G`| MOVE|Goto specific line
`30i- ESC` |REPEAT| Writes `-` 30 veces
`of`|SEARCH| Next `o` `same line`
`3fq`|SEARCH| Third occurrence of `q` `same line`
`/` |SEARCH|enter text
`n` |SEARCH|next occurrence
`N` |SEARCH|prev occurrence
`o`|NEW LINES|Add a new line below and start edit mode
`O`| NEW LINES|add new line above and start edit mode
`x`| DELETE|Character under the cursor
`X`|DELETE| Character left of the cursor
`di"`|DELETE| Delete inside quotes
`dw`| DELETE|Word (also copy clipboard)
`d2e`| DELETE|Two words
`r`| REPLACE|Single character; enter into command mode
`.` |REPEAT|Repites last command
`v`|OTHERS| Enter visual mode.
`u`|OTHERS| Undo
`chrl + r`|OTHERS| for redo
`:help`|OTHERS| help
`%` | OTHERS|Move cursor to matching parenthesis
---|---|---
`gg`| MOVE|Begin of the file
`GG`| MOVE|End of the file
