Package.describe({
  summary: "Bootstrap Material Design, using Less.",
  version: "0.3.0",
  git: "https://github.com/pfafman/meteor-bootstrap-material-design-less",
});


Package.on_use(function (api) {
  api.versionsFrom("METEOR@1.0");
  api.use('jquery', 'client');
  api.use('less', 'client');

  // javascript
  api.add_files('lib/js/material.js', 'client');
  api.add_files('lib/js/ripples.js', 'client');

  // fonts
  api.add_files('lib/fonts/Material-Design-Icons.eot', 'client');
  api.add_files('lib/fonts/Material-Design-Icons.svg', 'client');
  api.add_files('lib/fonts/Material-Design-Icons.ttf', 'client');
  api.add_files('lib/fonts/Material-Design-Icons.woff', 'client');
});
