return {
  "frankroeder/parrot.nvim",
  dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
  -- optionally include "folke/noice.nvim" or "rcarriga/nvim-notify" for beautiful notifications
  config = function()
    require("parrot").setup({
      -- Providers must be explicitly set up to make them available.
      providers = {
        openai = {
          name = "openai",
          api_key = os.getenv("OPENAI_API_KEY"),
          endpoint = "https://open.bigmodel.cn/api/paas/v4/chat/completions",
          params = {
            chat = { temperature = 1.1, top_p = 1 },
            command = { temperature = 1.1, top_p = 1 },
          },
          topic = {
            model = "glm-4.5",
            params = { max_completion_tokens = 64 },
          },
          models = {
            "glm-4.5",
            "glm-4.5-air",
          },
        },
      },
    })
  end,
}
