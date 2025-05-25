const { fontFamily } = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    "./index.html",
    "./warehouse-sanitation.html",
    "./office-space-sanitation.html",
    "./food-processing-plant-cleaning.html",
    "./apply.html"
  ],
  theme: {
    extend: {
      colors: {
        'premier-blue': '#003366',
        'premier-light-blue': '#E6F0F7',
        'premier-gray': '#4A5568',
        'premier-orange': '#F68B1F',
        'premier-green': '#5B8C5A',
        'premier-primary-green': '#00A651'
      },
      fontFamily: {
        sans: ['Inter', ...fontFamily.sans],
      },
    },
  },
  plugins: [],
}
