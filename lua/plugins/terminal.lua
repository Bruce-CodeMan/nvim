return {
  "akinsho/toggleterm.nvim",
  version = "*", -- 使用最新稳定版本
  config = function()
    require("toggleterm").setup({
      size = 20, -- 终端窗口的高度或宽度
      open_mapping = [[<C-\>]], -- 快捷键：Ctrl + \
      hide_numbers = true, -- 隐藏行号
      shade_filetypes = {},
      shade_terminals = true, -- 使终端背景变暗
      shading_factor = 2, -- 背景暗化程度
      start_in_insert = true, -- 启动终端时进入插入模式
      persist_size = true, -- 记住终端窗口大小
      direction = "float", -- 终端方向："horizontal"（水平）、"vertical"（垂直）、"float"（浮动窗口）
      float_opts = {
        border = "curved", -- 浮动窗口的边框样式："single", "double", "shadow", 或 "curved"
      },
    })
  end,
}