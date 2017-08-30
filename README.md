# WordKnock: Add a tracking image to a Word document

### Usage:

```
./WordTracker.sh http://<someurl>/img.jpg
```

This will add `http://<someurl>/img.jpg` to the footer of the `Tracker.docx` file, creating `Tracker-armed.docx`. You can open `Tracker-armed.docx` and add whatever other content you want. Now just monitor your server for IPs accessing the `img.jpg`

### Tips:
Use a 1x1 white pixel. This can be generated on the command line with:

```
echo iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8Xw8AAoMBgDTD2qgAAAAASUVORK5CYII= | base64 --decode > pix.png
```
Also, it's probably best to use a unique filename, so bots/crawlers don't stumble across the image.
