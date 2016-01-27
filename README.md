# gulp-json-template-christacheio

===========

Do you want to template json files in a simple and easy way? Well, there's a million ways to do that!

Here's another one.

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

Good luck out there.
