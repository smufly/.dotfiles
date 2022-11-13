local options = {
    -- autochdir = true,
    autoindent = true,
	cindent = true,
	backup = false, -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 2, -- more space in the neovim command line for displaying messages
	completeopt = { "menu", "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding written to a file
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	mouse = "a", -- allow the mouse to be used in neovim
	pumheight = 10, -- pop up menu height
	showmode = true, -- we don't need to see things like -- INSERT -- anymore
	showtabline = 2, -- always show tabs
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true, -- enable persistent undo
	updatetime = 300, -- faster completion (4000ms default)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	expandtab = true, -- convert tabs to spaces
	shiftwidth = 4, -- the number of spaces inserted for each indentation
	tabstop = 4, -- insert 4 spaces for a tab
	cursorline = true, -- highlight the current line
	number = true, -- set numbered lines
	relativenumber = true, -- set relative numbered lines
	numberwidth = 4, -- set number column width to 4 {default 4}
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	wrap = false, -- display lines as one long line
	scrolloff = 10, -- 10 lines above cursor 
	sidescrolloff = 10,
	guifont = "monospace:h17", -- the font used in graphical neovim applications
	shada =  { "!", "'1000", "<50", "s10", "h" },
	inccommand = "split",
	fileformats = {"unix", "dos"},
	formatoptions = {
        a = false, -- Auto formatting is BAD.
        t = false, -- Don't auto format my code. I got linters for that.
        c = true, -- In general, I like it when comments respect textwidth
        q = true, -- Allow formatting comments w/ gq
        o = false, -- O and o, don't continue comments
        r = true, -- But do continue when pressing enter.
        n = true, -- Indent past the formatlistpat, not underneath it.
        j = true, -- Auto-remove comments if possible.
        ["2"] = false -- I'm not in gradeschool anymore
	},
	joinspaces = false -- two spaces and grade school, we're done
}

-- interate over options
for k, v in pairs(options) do
	vim.opt[k] = v
end

