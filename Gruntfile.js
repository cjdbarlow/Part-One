module.exports = function(grunt) {
	 grunt.loadNpmTasks('grunt-aws');
	 grunt.loadNpmTasks('grunt-gitbook');
	grunt.initConfig({
	gitbook:{
		input:"./",
		output:"_book"
	},
		aws: grunt.file.readJSON('.aws.json'),
    s3: {
      options: {
        accessKeyId: "<%= aws.accessKeyId %>",
        secretAccessKey: "<%= aws.secretAccessKey %>",
        bucket: "<%= aws.bucket %>",
		region: "ap-southeast-2",
		access: "public-read"
      },
      build: {
        cwd: "_book",
        src: "**"
      }
    },
	});

  grunt.registerTask('default', ['s3']);
};
