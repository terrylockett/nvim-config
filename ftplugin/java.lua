print("hello Java")



local config = {
    cmd = {'/opt/homebrew/Cellar/jdtls/1.31.0/bin/jdtls'},

	root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),

	init_options = {
		settings = {
			java = {
				imports = {
					gradle = {
						wrapper = {
							checksums = {
								{
									sha256 = "01f2365fb6d728a44b750e16b28cc23a1d5aefd199289978c3fffedf538d3bfa",
									allowed = true
								}
							}
						}
					}
				},

			}
		}
	},
	settings = {
		java = {
			configuration = {
				{
					name = "JavaSE-11",
					path = "/Library/Java/JavaVirtualMachines/jdk-11.0.16.1.jdk/Contents/Home",
				},
				{
					name = "JavaSE-17",
					path = "/opt/homebrew/Cellar/openjdk@17/17.0.9/libexec/openjdk.jdk/Contents/Home",
				},
			},
		}
	},
}
require('jdtls').start_or_attach(config)
