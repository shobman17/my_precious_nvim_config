local theme = {
  fill = 'TabLineFill',
  -- fill = { fg='#f2e9de', bg='#907aa9', style='italic' },
  head = 'TabLine',
  -- current_tab = 'TabLineSel',
  current_tab = 'TabLineFill',
  tab = 'TabLine',
  win = 'TabLine',
  tail = 'TabLine',
}

require('tabby.tabline').set(function(line)
  return {
    {
      { '  ', hl = theme.head },
      --line.sep('>', theme.head, theme.fill),
    },
    line.tabs().foreach(function(tab)
      local hl = tab.is_current() and theme.current_tab or theme.tab
      return {
        -- line.sep('', hl, theme.fill),
        line.sep(' ', hl, theme.fill),
        tab.is_current() and '⯀' or '⛶',
        "Tab",
        tab.number(),
        --tab.name(),
        tab.close_btn(''), -- show a close button
        -- line.sep('', hl, theme.fill),
        hl = hl,
        margin = ' ',
      }
    end),
    line.spacer(),
    -- shows list of windows in tab
    line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
       return {
         -- line.sep('', theme.win, theme.fill),
         line.sep(' ', theme.win, theme.fill),
         win.is_current() and '' or '',
         win.buf_name(),
         --line.sep('', theme.win, theme.fill),
         hl = theme.win,
         margin = ' ',
       }
     end),
    {
      line.sep('', theme.tail, theme.fill),
      { '  ', hl = theme.tail },
    },
    hl = theme.fill,
  }
end)

