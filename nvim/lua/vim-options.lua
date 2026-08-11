vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = function()
      return { vim.fn.split(vim.fn.getreg('"'), "\n"), vim.fn.getregtype('"') }
    end,
    ["*"] = function()
      return { vim.fn.split(vim.fn.getreg('"'), "\n"), vim.fn.getregtype('"') }
    end,
  },
}
 
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.guicursor = "a:block"
vim.opt.cursorline = true

vim.keymap.set("v", "<leader>y", '"+y', {})
