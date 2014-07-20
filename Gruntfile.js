var path = require('path');

module.exports = function (grunt) {
    'use strict';
    // load all grunt tasks
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

    grunt.initConfig({
        copy: {
            main: {
                files: [
                    // copy the 2 completion files into place
                    {
                        expand: true,
                        src: ['node.fish', 'npm.fish'],
                        dest: path.join(process.env.HOME, '.config', 'fish', 'completions')
                    }
                ]
            }
        },
        watch: {
            main: {
                files: [ 'node.fish', 'npm.fish' ],
                tasks: [ 'copy' ]
            }
        }
    });

    grunt.registerTask('default', ['copy']);
};
