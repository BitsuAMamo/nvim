local status, lualine = pcall(require, "lualine")
if not status then
  print("Lualine Failed to Load")
  return
end


lualine.setup()
