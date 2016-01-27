# gulp-json-template-christacheio

===========

Do you want to template json files in a simple and easy way? Me, too. This gulp plugin helps you to do that.

Usage
-----
 
 ```javascript
 var ChristacheioStream = require('gulp-json-template-christacheio');
 
 var templateData = { "benevolent-overlord": "skynet", "presidential-candidate": "Mr T. Entacle"}
 christachioStream = new ChristachioStream({ data: templateData })
 
 gulp.task('task', function() {
  return gulp.src('template.json', { read: false }) // much faster
    .pipe(ignore('node_modules/**'))
    .pipe(christachioStream());
 });
 ```
 
This would take a json template like this:
```json
{
   "statement": "I could never be afraid of {{benevolent-overlord}}",
   "voting-for": "{{presidential-candidate}}"
}
```

And produce:
 ```json
{
   "statement": "I could never be afraid of skynet",
   "voting-for": "Mr T. Entacle"
}

```

LICENSE
-------

(MIT License)

Copyright (c) 2014 [Richardson & Sons, LLC](http://richardsonandsons.com/)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
