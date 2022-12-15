local status, telescope = pcall(require, "telescope")
if not status then
  print("Telescope Failed to Load")
  return
end 

local status, actions = pcall(require, "telescope.actions")
if not status then
  print("Telescope Actions Failed to Load")
  return
end 


telescope.setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-k"] = actions.move_selection_previous,
        ["<C-j"] = actions.move_selection_next,
        ["<C-q"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  },
}

telescope.load_extension("fzy_native")
