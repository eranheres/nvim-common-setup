return {
  "rmagatti/auto-session",
  dependencies = {
    "nvim-lualine/lualine.nvim",
  },
  config = function()
    require("auto-session").setup({
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,
    })
    require("lualine").setup({
      options = {
        theme = "tokyonight",
      },
      sections = { lualine_c = { require("auto-session.lib").current_session_name } },
    })
  end,
}
