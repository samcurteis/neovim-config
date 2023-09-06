return {
  {
    "nvim-neotest/neotest",
    keys = {
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run Last Test",
      },
    },
    dependencies = { "haydenmeade/neotest-jest", "marilari88/neotest-vitest", "nvim-neotest/neotest-python" },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npm test --",
          jestConfigFile = "custom.jest.config.ts",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
      table.insert(opts.adapters, require("neotest-vitest"))
      table.insert(opts.adapters, require("neotest-python"))
    end,
  },
}
