const { fontFamily } = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    "./index.html",
    "./warehouse-sanitation.html",
    "./office-space-sanitation.html",
    "./food-processing-plant-cleaning.html",
    "./custom-cleaning-programs.html",
    "./privacy-policy.html",
    "./terms-of-service.html",
    "./sitemap.html",
    "./brochure.html",
    "./brochure2.html"
  ],
  theme: {
    extend: {
      colors: {
        'premier-blue': '#003366',
        'premier-blue-vivid': '#0E39D2',
        'premier-light-blue': '#EAF1FF',
        'premier-gray': '#5C6470',
        'premier-orange': '#00AE41',
        'premier-green': '#048C35',
        'premier-primary-green': '#00AE41',
        'premier-mint': '#7EE8A8'
      },
      fontFamily: {
        sans: ['Inter', ...fontFamily.sans],
        heading: ['Montserrat', 'Arial', ...fontFamily.sans],
      },
    },
  },
  plugins: [],
}
