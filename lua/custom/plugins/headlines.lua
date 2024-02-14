return {
  'lukas-reineke/headlines.nvim',
  config = function()
    require("headlines").setup({
      norg = {
        headline_highlights = { "Headline1", "Headline2", "Headline3", "Headline4", "Headline5", "Headline6" },
        codeblock_highlight = { "NeorgCodeBlock" },
      },
      markdown = {
        headline_highlights = { "Headline1", "Headline2", "Headline3", "Headline4", "Headline5", "Headline6" },
        -- codeblock_highlight = { "markdownCodeBlock" },
        fat_headline_lower_string = "━",
      }
    })
  end
}
