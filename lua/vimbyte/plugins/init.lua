function register_plugin(plugin_name, use)
  local status_ok, plugin_config = pcall(require, "vimbyte.plugins." .. plugin_name)
  if not status_ok then return end
  use(plugin_config)
  pcall(require, "vimbyte.plugins." .. plugin_name .. ".mappings")
end

return function(use) 
  plugins = {"colorscheme", "treesitter", "which-key"}
  for _, plugin_name in pairs(plugins) do
    register_plugin(plugin_name, use)
  end
end
