module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    coffee:
      coffee_to_js:
        options:
          bare: true
        expand: true
        flatten: false
        cwd: "src/javascripts"
        src: ["**/*.coffee"]
        dest: 'build/javascripts/'
        ext: ".js"
    sass:
      options:
        noCache: true
      dist:
        expand: true
        cwd: "src/stylesheets"
        src: ["*.scss"]
        dest: 'build/stylesheets/'
        ext: ".css"
    uglify:
      options:
        mangle: true
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      build:
        src: 'build/javascripts/**/*.js'
        dest: 'build/application.min.js'
    cssmin:
      build:
        src: 'build/stylesheets/*.css'
        dest: 'build/application.min.css'
    watch:
      sass:
        files: 'src/**/*.scss'
        tasks: ['sass', 'cssmin']
      coffee:
        files: 'src/**/*.coffee'
        tasks: ['coffee', 'uglify']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['coffee', 'sass', 'uglify', 'cssmin', 'watch']
  grunt.registerTask 'compile', ['coffee', 'sass', 'watch']
  grunt.registerTask 'compile-sass', ['sass']
  grunt.registerTask 'compile-coffee', ['coffee']
  grunt.registerTask 'compile-uglify', ['uglify', 'cssmin']
