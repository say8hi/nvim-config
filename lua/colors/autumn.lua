-- Matugen theme for mini.base16

local base16 = require('mini.base16')

-- Base16 palette from matugen
local palette = {
  base00 = '#151310', -- background
  base01 = '#151310', -- lighter background
  base02 = '#151310', -- selection
  base03 = '#4e453c', -- comments, line numbers
  base04 = '#d1c4b8', -- dark foreground
  base05 = '#e8e1dc', -- foreground
  base06 = '#f2eeeb', -- light foreground
  base07 = '#fcfbfb', -- lightest
  base08 = '#ffb4ab', -- red (variables, errors)
  base09 = '#c5ab8d', -- orange
  base0A = '#d6c4af', -- yellow
  base0B = '#c3cb9f', -- green (strings)
  base0C = '#ffddb3', -- cyan (operators)
  base0D = '#e3c197', -- blue (functions)
  base0E = '#e0e7ba', -- purple (keywords)
  base0F = '#ffcbc5', -- brown
}

base16.setup({
  palette = palette,
  use_cterm = nil,
  plugins = {
    default = true,
    ['echasnovski/mini.nvim'] = true,
  },
})

vim.g.colors_name = 'matugen'

-- Custom highlight colors
local colors = {
  white = '#e8e1dc',
  darker_black = '#221f1c',
  black = '#141210',
  black2 = '#151310',
  one_bg = '#151310',
  grey = '#4e453c',
  red = '#ffb4ab',
  pink = '#e0e7ba',
  green = '#c3cb9f',
  blue = '#e3c197',
  orange = '#c5ab8d',
  cyan = '#ffe8cd',
  teal = '#ffddb3',
  purple = '#d8e0a7',
  lavender = '#fff4e6',
}

local function apply_custom_highlights()
  -- UI highlights
  vim.api.nvim_set_hl(0, 'Normal', { bg = colors.black })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'NvimTreeNormalNC', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'TelescopePrompt', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'TelescopeResults', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'Pmenu', { bg = colors.black2 })
  vim.api.nvim_set_hl(0, 'CmpPmenu', { bg = colors.black2 })
  vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = colors.black2 })
  vim.api.nvim_set_hl(0, 'Visual', { bg = colors.grey })
  vim.api.nvim_set_hl(0, 'VisualNOS', { bg = colors.grey })

  -- Treesitter highlights
  vim.api.nvim_set_hl(0, '@variable', { fg = colors.white })
  vim.api.nvim_set_hl(0, '@module', { fg = colors.white })
  vim.api.nvim_set_hl(0, '@variable.member', { fg = colors.white })
  vim.api.nvim_set_hl(0, '@property', { fg = colors.teal })
  vim.api.nvim_set_hl(0, '@variable.builtin', { fg = colors.red })
  vim.api.nvim_set_hl(0, '@type.builtin', { fg = colors.purple })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = colors.orange })
  vim.api.nvim_set_hl(0, '@operator', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, '@punctuation.special', { fg = colors.teal })
  vim.api.nvim_set_hl(0, '@function.macro', { fg = colors.pink })
  vim.api.nvim_set_hl(0, '@keyword.storage', { fg = colors.purple })
  vim.api.nvim_set_hl(0, '@tag.delimiter', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, '@function', { fg = colors.blue })
  vim.api.nvim_set_hl(0, '@constructor', { fg = colors.lavender })
  vim.api.nvim_set_hl(0, '@tag.attribute', { fg = colors.orange })

  -- Syntax highlights
  vim.api.nvim_set_hl(0, 'StorageClass', { fg = colors.purple })
  vim.api.nvim_set_hl(0, 'Repeat', { fg = colors.purple })
  vim.api.nvim_set_hl(0, 'Define', { fg = colors.blue })

  -- Bufferline
  local bl_bg     = "#201c19"
  local bl_bg_sel = "#141210"
  local bl_fill   = "#0e0c0b"

  vim.api.nvim_set_hl(0, "BufferLineBackground",             { fg = "#7a6e66", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineFill",                   { bg = bl_fill })
  vim.api.nvim_set_hl(0, "BufferLineBufferSelected",         { fg = "#f2eeeb", bg = bl_bg_sel, bold = true })
  vim.api.nvim_set_hl(0, "BufferLineBufferVisible",          { fg = "#d1c4b8", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineSeparator",              { fg = bl_fill,   bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected",      { fg = bl_fill,   bg = bl_bg_sel })
  vim.api.nvim_set_hl(0, "BufferLineSeparatorVisible",       { fg = bl_fill,   bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineCloseButton",            { fg = "#7a6e66", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineCloseButtonSelected",    { fg = "#f2eeeb", bg = bl_bg_sel })
  vim.api.nvim_set_hl(0, "BufferLineCloseButtonVisible",     { fg = "#d1c4b8", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineModified",               { fg = "#d6c4af", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineModifiedSelected",       { fg = "#d6c4af", bg = bl_bg_sel })
  vim.api.nvim_set_hl(0, "BufferLineModifiedVisible",        { fg = "#d6c4af", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineDiagnostic",             { fg = "#7a6e66", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineDiagnosticSelected",     { fg = "#d1c4b8", bg = bl_bg_sel })
  vim.api.nvim_set_hl(0, "BufferLineError",                  { fg = "#ffb4ab", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineErrorSelected",          { fg = "#ffb4ab", bg = bl_bg_sel })
  vim.api.nvim_set_hl(0, "BufferLineErrorDiagnostic",        { fg = "#ffb4ab", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineErrorDiagnosticSelected",{ fg = "#ffb4ab", bg = bl_bg_sel })
  vim.api.nvim_set_hl(0, "BufferLineWarning",                { fg = "#c5ab8d", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineWarningSelected",        { fg = "#c5ab8d", bg = bl_bg_sel })
  vim.api.nvim_set_hl(0, "BufferLineWarningDiagnostic",      { fg = "#c5ab8d", bg = bl_bg })
  vim.api.nvim_set_hl(0, "BufferLineWarningDiagnosticSelected",{ fg = "#c5ab8d", bg = bl_bg_sel })

  -- Diff highlights (native Neovim diff / claudecode.nvim)
  vim.api.nvim_set_hl(0, 'DiffAdd',    { bg = '#242b19', fg = '#c3cb9f' })
  vim.api.nvim_set_hl(0, 'DiffDelete', { bg = '#321d1a', fg = '#ffb4ab' })
  vim.api.nvim_set_hl(0, 'DiffChange', { bg = '#2b2419' })
  vim.api.nvim_set_hl(0, 'DiffText',   { bg = '#3d3220', bold = true })

  -- Telescope custom
  vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = colors.one_bg, fg = colors.blue })
end

local function fix_bufferline_devicons()
  local bl_bg     = "#201c19"
  local bl_bg_sel = "#141210"
  for _, hl in ipairs(vim.fn.getcompletion("BufferLineDevIcon", "highlight")) do
    local ok, existing = pcall(vim.api.nvim_get_hl, 0, { name = hl, link = false })
    if ok and existing then
      local bg = hl:match "Selected$" and bl_bg_sel or bl_bg
      vim.api.nvim_set_hl(0, hl, { fg = existing.fg, bg = bg })
    end
  end
end

apply_custom_highlights()
fix_bufferline_devicons()

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    apply_custom_highlights()
    fix_bufferline_devicons()
  end,
})

-- fix devicons after bufferline initializes and on each new buffer
vim.api.nvim_create_autocmd({ "UIEnter", "BufAdd" }, {
  callback = function()
    vim.schedule(fix_bufferline_devicons)
  end,
})

return {
  palette = palette,
  colors = colors,
}
