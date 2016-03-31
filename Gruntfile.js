/**
 * Created by maent45 on 29/03/16.
 */
module.exports = function(grunt) {
    require('jit-grunt')(grunt);

    grunt.initConfig({
        less: {
            development: {
                options: {
                    compress: true,
                    yuicompress: true,
                    optimization: 2
                },
                files: {
                    "themes/cloud-dive/css/main.css": "themes/cloud-dive/less/main.less",
                    "themes/cloud-dive/css/HomePage.css": "themes/cloud-dive/less/HomePage.less",
                    "themes/cloud-dive/css/portfolio.css": "themes/cloud-dive/less/portfolio.less" // destination file and source file
                }
            }
        },
        watch: {
            styles: {
                files: ['themes/cloud-dive/less/**/*.less'], // which files to watch
                tasks: ['less'],
                options: {
                    nospawn: true
                }
            }
        }
    });

    grunt.registerTask('default', ['less', 'watch']);
};