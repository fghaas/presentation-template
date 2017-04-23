# Importing diagrams from LibreOffice

One of the nice things about LibreOffice Impress is that it has a
built-in diagram editor.  However you can still use this for building
diagrams for `reveal.js` presentations!  Here's how.

If you already have an existing diagram in LibreOffice Impress:

-   Select the whole diagram, and copy it to the clipboard.
-   `File` > `New` > `Drawing`
-   Paste the selection into the new LibreOffice Draw document
-   Skip to the "Export as SVG" section below.

Alternatively, you can simply create one directly in LibreOffice Draw.

Next, export the diagram from LibreOffice Draw as SVG:

-   Select the whole diagram in the new document.
-   `File` > `Export`
-   Ensure the `Selection` checkbox is ticked.
-   Export as an `.svg` file.

Finally, include it in your Markdown, e.g.

    <img src="images/my-diagram.svg" />

and add CSS styles for size, positioning etc.

## Dealing with buggy export

It seems that LibreOffice Draw does not always reliably export a
selection as SVG :-(  If you experience this, you may have more luck
with the following approach:

-   Use the selection tool to draw a box around the area you want
    to export, and note the exact dimensions of the box.
-   `Format` > `Page`
    -   Set the width and height to those dimensions
    -   Set all the margins to zero
-   Select all objects and move them to be inside the new page
    dimensions.
-   Export as before, but this time do not select the `Selection`
    checkbox.

## Importing from other diagramming software

Of course, you can apply a similar approach for diagrams from Inkscape
or any other tool which exports to SVG.
