return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
                c==o                                                        
              _/____\_                                                      
       _.,--'" ||^ || "`z._                                                 
      /_/^ ___\||  || _/o\ "`-._                                            
    _/  ]. L_| || .||  \_/_  . _`--._                                       
   /_~7  _ . " ||. || /] \ ]. (_)  . "`--.                                  
  |__7~.(_)_ []|+--+|/____T_____________L|                                  
  |__|  _^(_) /^   __\____ _   _|                                           
  |__| (_){_) J ]K{__ L___ _   _]                                           
  |__| . _(_) \v     /__________|________                                   
  l__l_ (_). []|+-+-<\^   L  . _   - ---L|                                  
   \__\    __. ||^l  \Y] /_]  (_) .  _,--'                                  
     \~_]  L_| || .\ .\\/~.    _,--'"                                       
      \_\ . __/||  |\  \`-+-<'"                                             
        "`---._|J__L|X o~~|[\\      "Millenium Falcon"                      
               \____/ \___|[//      Modified Corellian YT-1300 Transport (1)
                `--'   `--+-'                                               

 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
