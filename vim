# navigation
h - left
l - right
j - down
k - up

ctrl + d - down 1/2 screen
ctrl + u - up 1/2 screen
ctrl + f - down 1 screen
ctrl + b - up 1 screen

H - top of screen
M - middle of screen
L - bottom of screen

gg - first line
G - last line
:? - line ?

0 - start of line
^ - non-blank start of line
$ - end of line

w/W - start of next word
e/E - end of next word
b/B - start of previous word

} - next paragraph
{ - previous paragraph

f? - jump to ?
t? - jump before ?
% - jump to matching

# insert mode
i - before cursor
I - before line
a - after cursor
A - after line
o - line below
O - line above

ctrl + h - delete character before cursor
ctrl + w - delete word before cursor
ctrl + j - new line
ctrl + t - indent
ctrl + d - deindent

# visual mode
v - character mode
V - line mode
ctrl + v - blockwise mode

> - indent
< - deindent
= - autoindent

I - insert (blockwise)

# macros
q? - record macro into register ?
q - end recording
@? - run macro ?
_@? - run macro ? _ times
@@ - rerun last run macro

# text objects
?i/aw - ? inside/around word
?i/as - ? inside/around sentence
?i/ap - ? inside/around paragraph
?i/a" - ? inside/around quotes
?i/a(/b - ? inside/around parentheses
?i/a[ - ? inside/around brackets
?i/a{/B - ? inside/around braces
?i/a< - ? inside/around angle brackets
?i/at - ? inside/around html tags

# cut & paste
x - delete
y - yank
yy - yank line
p - paste after cursor
P - paste before cursor
d - delete
dd - delete line

"?y/p - yank/paste into register ?
"1y/p - yank/paste newest register
"9y/p - yank/paste oldest register
"+y/p - yank/paste into system clipboard
"_d - delete into black hole register
"0p - paste last copy, ignore cut/delete

# editing
r - replace with 1 character
R - replace until [esc]
cc/S - change entire line
c$/C - change from cursor til end of line
s - substitute

u - undo
ctrl + r - redo
. - repeat last command
>> - indent
<< - deindent
== - autoindent
]p - paste with adjusted indent
~ - switch case
