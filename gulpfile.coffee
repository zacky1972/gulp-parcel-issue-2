gulp = require 'gulp'
slim = require 'gulp-slim'
parcel = require 'gulp-parcel'

gulp.task 'build:slim', () ->
  gulp.src 'source/**/*.slim'
    .pipe slim()
    .pipe gulp.dest 'build/'

gulp.task 'parcel', ['build:slim'], () ->
  gulp.src 'build/**/*.html', {read:false}
    .pipe parcel()
    .pipe gulp.dest('build/')
