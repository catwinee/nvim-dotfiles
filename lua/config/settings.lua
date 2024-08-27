local opt = vim.opt

-- 相对行号和行号
opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- 显示光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 右，下分窗
opt.splitright = true
opt.splitbelow = true

-- 忽略搜索大小写 但有大写时不忽略
opt.ignorecase = true
opt.smartcase = true

-- 终端真颜色
opt.termguicolors = true

-- 左侧多留一行给sign如断点
opt.signcolumn = "yes"

-- 关闭swapfile
opt.swapfile = false
