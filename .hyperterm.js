module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: 'Droid Sans Mono for Powerline',

    // terminal cursor background color (hex)
    cursorColor: '#373b41',

    // color of the text
    foregroundColor: '#c5c8c6',

    // terminal background color
    backgroundColor: '#1d1f21',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '.title_1i8co95 { color: #c5c8c6 !important }',

    // custom padding (css format, i.e.: `top right bottom left`)
    termCSS: '',

    // custom padding
    padding: '12px 14px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      "#1d1f21",
      "#cc6666",
      "#b5bd68",
      "#f0c674",
      "#81a2be",
      "#b57880",
      "#8abeb7",
      "#282a2e",
      "#969896",
      "#cc6666",
      "#b5bd68",
      "#f0c674",
      "#81a2be",
      "#b57880",
      "#8abeb7",
      "#ffffff",
      "#c5c8c6"
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hypersolar`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hypercwd'
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
