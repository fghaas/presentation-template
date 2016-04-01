# My reveal.js presentation template

I keep this repo around as a template for presentation slide decks. It
is based on reveal.js by Hakim El-Hattab (and contributors), and
reflects some presentation "rules" I've defined for myself through
trial and error over a few years:

- I use a white background, with black as the primary foreground
  color. I've found this to work best even with low-quality projectors
  and under suboptimal lighting conditions, even for talk attendees
  with reduced eyesight or seated in the very back row.

- I use sans-serif fonts (Cabin is my current favorite), with a
  typewriter-style monospace font (currently, Shadows into Light).

- While I'm presenting, I want the progress bar and controls off.
  They're visually distracting, and I control the presentation from a
  remote anyway.

- Whenever I want to use graphics, I let them stand on their own, with
  no text, and I use them as a full-screen background. reveal.js,
  thankfully, makes this very easy, and will "just do the right thing"
  no matter whether you're presenting on a projector, on a tablet, or
  on your phone.

- I always write my slides in Markdown, and make heavy use of speaker
  notes through the reveal.js notes plugin.


## How to use

Simple: just fork this repo and drop Markdown files into `markdown`
and images into `images`. Then, fix up `index.html` to include your
Markdown-authored sections.

This repo has two branches, one named `master` and one
`gh-pages`. Make sure you do your regular work in `master`, then merge
into `gh-pages` and push both branches. Your presentation will then be
rendered to GitHub Pages, you can share it immediately, and GitHub
will host it for you, indefinitely, for free.


## Do you find this helpful?

If you find the content in this repo useful, it would be great if you
could let me know. You could either star this repo, or even better,
send me a [happiness packet](https://www.happinesspackets.io).