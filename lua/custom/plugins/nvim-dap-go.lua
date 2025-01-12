return {
  'leoluz/nvim-dap-go',
  ft = 'go',
  dependencies = 'mfussenegger/nvim-dap',
  config = function(_, opts)
    local dap_go = require 'dap-go'
    dap_go.setup(opts)

    vim.keymap.set('n', '<leader>dgt', function()
      dap_go.debug_test()
    end)
    vim.keymap.set('n', '<leader>dgl', function()
      dap_go.debug_last_test()
    end)
  end,
}
