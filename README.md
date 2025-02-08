# CS193p
Developing Apps for iOS course from Stanford university

## Assignment I

### Required Tasks

- [x] Get the Memorize game working as demonstrated in lectures 1 and 2. Type in all the
code. **Do not copy/paste from anywhere**.

- [x] After doing so, you can feel free to remove the ⊖ and ⊕ buttons at the bottom of the
screen (or not, your choice) and all of the code that supports it.

- [x] Add a title "Memorize!" to the top of the screen. It’s a title, so it should be in a large
font.

- [x] Add at least 3 "theme choosing" buttons to your UI, each of which causes all of the
cards' emojis to be replaced with new emojis from the chosen theme.

- [x] The face up or face down state of the cards does not need to change when the user
changes the theme.

- [x] The number of pairs of cards in each of your 3 themes should be different, but in no
case fewer than 4 pairs. Note that you must put a pair of each emoji in the theme into
the UI 

- [x] The cards that appear when a theme button is touched should be in an unpredictable
(i.e. random) order. In other words, the cards should be shufed each time a theme
button is chosen

- [x] The theme-choosing buttons must include an image representing the theme and text
describing the theme stacked on top of each other vertically

- [x] The image portion of each of these theme-choosing buttons must be created using an
SF Symbol which evokes the idea of the theme it chooses

- [x] The text description of the theme-choosing buttons must use a noticeably smaller font
than the font we chose for the emoji on the cards

- [ ] Change the code so that cards appear face down by default rather than face up


### Extra Fun Things To Do

- [x] Associate a Color with each theme

- [x] Make a random number of pairs of cards appear each time a theme button is chosen.

- [ ] Try to come up with some sort of equation that relates the number of cards in the game to the width you pass when you create your LazyVGrid’s `GridItem(.adaptive(minimum:maximum:))` such that each time a theme button is chosen, the LazyVGrid makes the cards as big as possible without having to scroll.
