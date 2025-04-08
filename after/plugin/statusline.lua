function _G.DiagnosticStatus()
  local diagnostics = vim.diagnostic.get(0)
  local counts = { errors = 0, warnings = 0 }

  for _, d in ipairs(diagnostics) do
    if d.severity == vim.diagnostic.severity.ERROR then
      counts.errors = counts.errors + 1
    elseif d.severity == vim.diagnostic.severity.WARN then
      counts.warnings = counts.warnings + 1
    end
  end

  local parts = {}
  if counts.errors > 0 then
    table.insert(parts, "E:" .. counts.errors)
  end
  if counts.warnings > 0 then
    table.insert(parts, "W:" .. counts.warnings)
  end

  return #parts > 0 and "[" .. table.concat(parts, " ") .. "]" or ""
end

vim.o.statusline = "%f %{v:lua.DiagnosticStatus()} %h%m%r %=%-14.(%l,%c%V%) %P"

