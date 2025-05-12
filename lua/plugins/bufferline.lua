return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        themable = true,
        offsets = {{
          filetype = "NvimTree",
          text = "File Explorer",
          hightlight = "Directory",
          padding = 1
        }},
        padding = 8,
        separactor_style = "slant",
        indicator = {
          style = "underline"
        }
      }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
    keymap.set("n", "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
    keymap.set("n", "<leader>bc", "<cmd>bdelete<CR>", { desc = "Close the current buffer" })
    keymap.set("n", "<leader>bt", "<cmd>%bd|e#|bd#<CR>", { desc = "Close the other buffers" })
  end 
}