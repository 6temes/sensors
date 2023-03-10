module.exports = {
  plugins: [require('prettier-plugin-tailwindcss')],

  endOfLine: 'lf',
  printWidth: 100,
  semi: false,
  singleQuote: true,
  trailingComma: 'all',
  rubyPlugins: 'plugin/single_quotes,plugin/trailing_comma',

  formatter: 'sql-formatter',
  language: 'postgresql',
  linesBetweenQueries: 2,
}
