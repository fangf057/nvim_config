-- lua/plugins/text-case.lua
return {
  "johmsalas/text-case.nvim",
  -- 依赖 nvim-treesitter，确保它已安装并加载
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  -- 建议延迟加载，除非需要立即使用其命令
  -- event = "VeryLazy",
  -- 如果不立即加载，需要指定命令以便 Lazy.nvim 知道何时加载
  -- cmd = { "TextCase...", "Subs..." }, -- 根据实际命令填写
  config = function()
    require("textcase").setup({})
    -- 设置快捷键 (可选，也可以在 keymaps.lua 中设置)
    -- vim.keymap.set("n", "ga", "<cmd>TextCaseOpenTelescope<CR>", { desc = "TextCase (ga)" })
  end,
}
