return {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
};

-- INFO: theta-theme

-- return {
--     'goolord/alpha-nvim',
--      dependencies = {
--          'echasnovski/mini.icons',
--          'nvim-lua/plenary.nvim'
--      },
--      config = function ()
--          require'alpha'.setup(require'alpha.themes.theta'.config)
--      end
-- };
