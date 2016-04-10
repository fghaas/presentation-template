# `bin`

This directory contains scripts that sometimes come in handy doing
presentations.

## `screen.sh`

This is a wrapper around the Linux `script` command that invokes
`screen -xR` (which spawns a new `screen`, or connects to an existing
`screen` session if one is running).

This script requires the `script` and `mktemp` commands, which should
be available for any contemporary distribution as installable packages
&mdash; if they're not already installed by default.

## `shellinabox.sh`

This is another wrapper script that also starts `screen`, attaching to
the same session as previously created by the `screen.sh` script, and
exposes the terminal as a small embedded web server at
<http://localhost:4200/>. You are then able to add this terminal to
your screen, for the purpose of doing a live demo or anything else you
might need a terminal for. To do so, simply include an inline frame in
one of your slides, like so:

```html
<iframe src="http://localhost:4200/"></iframe>
```

Alternatively, you can also include the terminal as a slide
background, which has the added advantage that you can easily
configure it to fill the full available screen.

```html
<!-- .slide: data-background-iframe="http://localhost:4200/" data-background-size="contain" -->
```

## `demo.sh`

If you're using the `data-background-iframe` option in your slides,
you will not be able to type into your screen session from within the
presentation. However, with the `demo.sh` script you can still include
a terminal demo easily:

- Ahead of your presentation, start `screen.sh` and `shellinabox.sh`.

- In addition, start `demo.sh`. This will simply create yet another
  connection to the same `screen` session.

- Start your presentation. Hit `s` for the speaker console, then pull
  your main window to your projector screen &mdash; be sure to put
  your browser into full-screen mode &mdash;, and leave the speaker
  console (and your terminal application) on your laptop display.

- When you get to your demo slide, use `Alt-Tab` to switch to the
  terminal, and type from there. Your typing will be displayed nicely,
  and in full width, on the projector screen.

- When your demo is complete, use `Alt-Tab` again to switch back to
  the speaker console, and continue advancing through your slides.


## `asciinema.sh`

If you are making your slides available after your presentation, you
may want to include a screencast of your demo. To turn your recorded
`script` into an asciicast, simply run `asciinema.sh`. It uses
`scriptreplay` to play back your demo, and then uploads it to
[asciinema.org](http://www.asciinema.org).

