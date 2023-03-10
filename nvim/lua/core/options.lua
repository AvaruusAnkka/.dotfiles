local o = vim.opt

o.nu = true
o.rnu = true

o.ts = 2
o.sw = 2
o.si = true
o.scs = true

o.so = 4

require('telescope').setup{
	defaults = {
		file_ignore_patterns = { "^node_modules/" }
	}
}
