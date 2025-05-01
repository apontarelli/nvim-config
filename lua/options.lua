local opt = vim.opt

----- Options I like -----

---- Personal Preferences -----
opt.number = true
opt.relativenumber = true

opt.splitright = true
opt.splitbelow = true

opt.signcolumn = 'yes'
opt.shada = { "'10", '<0', 's10', 'h' }

opt.swapfile = false
opt.formatoptions:remove 'o'

opt.wrap = true
opt.linebreak = true
opt.breakindent = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.more = false

opt.foldmethod = 'manual'

opt.title = true
opt.titlestring = '%t%( %M%)%( (%{expand("%:~:h")})%)%a (nvim)'

opt.undofile = true

opt.showmode = false
opt.concealcursor = 'nc'
opt.conceallevel = 1 

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Sets how neowill display certain whitespace characters in the editor.
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Share clipboard between nvim and system
opt.clipboard = 'unnamedplus'
