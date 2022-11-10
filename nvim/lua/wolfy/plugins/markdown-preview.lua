local Plug = vim.fn['plug#']
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })

local g = vim.api.nvim_set_var
g('mkdp_auto_start', 1)
g('mkdp_auto_close', 1)
g('mkdp_refresh_slow', 0)
g('mkdp_command_for_global', 0)
g('mkdp_open_to_the_world', 0)
g('mkdp_open_ip', '')
g('mkdp_browser', '')
g('mkdp_echo_preview_url', 0)
g('mkdp_browserfunc', '')
g('mkdp_markdown_css', '')
g('mkdp_highlight_css', '')
g('mkdp_port', '')
g('mkdp_page_title', '${name}')
g('mkdp_theme', 'dark')
