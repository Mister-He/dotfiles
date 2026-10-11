return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    keys = {
        { "<leader>om", "<cmd>Markview toggle<CR>",        desc = "Markview: Toggle render" },
        { "<leader>omh", "<cmd>Markview hybridToggle<CR>", desc = "Markview: Hybrid mode" },
        { "<leader>oms", "<cmd>Markview splitToggle<CR>",  desc = "Markview: Split view" },
        { "<leader>omo", "<cmd>Markview open<CR>",         desc = "Markview: Open link under cursor" },
    },
}
