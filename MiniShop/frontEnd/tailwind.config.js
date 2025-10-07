/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{html,ts}",
  ],
  theme: {
    fontFamily: {
      'montserrat': [ 'Montserrat', 'sans-serif' ]
    },
    extend: {
      animation: {
        fadeIn: 'fadeIn 0.3s ease-in-out'
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: 0 },
          '100%': { opacity: 1 },
        }
      }
    },
  },
  plugins: [
    require( 'daisyui' ),
  ],
  daisyui: {
    themes: [
      {
        minishop: {
          "primary": "#f97316",   
          "secondary": "#1f2937", 
          "accent": "#facc15",    
          "neutral": "#111827",   
          "base-100": "#ffffff",
          "base-200": "#f3f4f6",
          "info": "#3b82f6",
          "success": "#10b981",
          "warning": "#f59e0b",
          "error": "#ef4444",
        },
      },
    ],
  }
}

