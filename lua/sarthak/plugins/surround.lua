return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
}

-- motions: 
-- Surround a word with quotes or brackets: ysiw"
-- Delete the surrounding quotes or brackets: ds" -> this will delete the double quotes around the word
-- Change the surrounding quotes or brackets: cs"' -> this is replace single quotes by double quotes
-- Using in visual mode: S" -> this will add double quotes to the string selected in visual mode
