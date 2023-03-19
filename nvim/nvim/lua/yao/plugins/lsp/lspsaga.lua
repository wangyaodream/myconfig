-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
  return
end

saga.setup({
  ui = {
    -- This option only works in Neovim 0.9
    title = true,
    -- Border type can be single, double, rounded, solid, shadow.
    border = "single",
    winblend = 0,
    expand = "",
    collapse = "",
    code_action = "💡",
    incoming = " ",
    outgoing = " ",
    hover = ' ',
    kind = {},
  },
  finder = {
    --percentage
    max_height = 0.5,
    force_max_height = false,
    keys = {
      jump_to = 'p',
      edit = { 'o', '<CR>' },
      vsplit = 's',
      split = 'i',
      tabe = 't',
      tabnew = 'r',
      quit = { 'q', '<ESC>' },
      close_in_preview = '<ESC>'
    },
  },
  -- keybinds for navigation in lspsaga window
  move_in_saga = { prev = "<C-k>", next = "<C-j>" },
  -- use enter to open file with finder
  finder_action_keys = {
    open = "<CR>",
  },
  -- use enter to open file with definition preview
  definition_action_keys = {
    edit = "<CR>",
  },
})
