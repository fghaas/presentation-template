# My reveal.js presentation template

I keep this repo around as a template for presentation slide decks. It
is based on [`reveal.js`](https://github.com/hakimel/reveal.js/) by
Hakim El-Hattab (and contributors), and reflects some presentation
"rules" I've defined for myself through trial and error over a few
years:

- I use a white background, with black as the primary foreground
  color. I've found this to work best even with low-quality projectors
  and under suboptimal lighting conditions, even for talk attendees
  with reduced eyesight or seated in the very back row.

- I use sans-serif fonts
  ([Cabin](https://www.google.com/fonts/specimen/Cabin) is my current
  favorite), with a typewriter-style monospace font (currently,
  Shadows into Light).

- While I'm presenting, I want the progress bar and controls off.
  They're visually distracting, and I control the presentation from a
  remote anyway.

- Whenever I want to use graphics, I let them stand on their own, with
  no text, and I use them as a full-screen background. reveal.js,
  thankfully, makes this very easy, and will "just do the right thing"
  no matter whether you're presenting on a projector, on a tablet, or
  on your phone.

- I always write my slides in Markdown, and make heavy use of speaker
  notes through the `reveal.js` notes plugin.


## How to use

Simple: just fork this repo and drop Markdown files into `markdown`
and images into `images`. Then, fix up `index.html` to include your
Markdown-authored sections.

This repo has two branches, one named `master` and one
`gh-pages`. Make sure you do your regular work in `master`, then merge
into `gh-pages` and push both branches. Your presentation will then be
rendered to [GitHub Pages](https://pages.github.com/), you can share
it immediately, and GitHub will host it for you, indefinitely, for
free.


### Running things locally

If you want to run your slides locally, rather than on GitHub Pages,
just drop them into the `DocumentRoot` of a web server, like Apache or
[`lighttpd`](https://www.lighttpd.net/).

For `lighttpd`, you may also want to set the following options:

```
dir-listing.encoding = "utf-8"
server.dir-listing   = "enable"
server.modules      += ( "mod_userdir" )
userdir.path         = "public_html"
```

Use the provided `.gitmodules` file to automatically clone local
copies of `reveal.js` and
[`qrcodejs`](https://davidshimjs.github.io/qrcodejs/):

```bash
git submodule init
git submodule update
```

Then, create a symlink to your Git checkout in `~/public_html`, such as:

```bash
ln -s ~/git/my-presentation ~/public_html/
```

... and access your presentation from
http://localhost/~yourusername/my-presentation/


## Do you find this helpful?

If you find the content in this repo useful, it would be great if you
could let me know. You could either star this repo, or even better,
send me a [happiness packet](https://www.happinesspackets.io).
