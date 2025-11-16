-- Convert Obsidian callouts to Quarto callouts
function Div(el)
  if el.classes:includes("callout") then
    return el
  end
  return el
end

-- Convert blockquotes that start with [!type] to Quarto callouts
function BlockQuote(el)
  if #el.content > 0 then
    local first = el.content[1]
    if first.t == "Para" and #first.content > 0 then
      local text = pandoc.utils.stringify(first.content[1])
      
      -- Match [!note], [!margin], etc.
      local callout_type = text:match("^%[!(%w+)%]")
      
      if callout_type then
        -- Remove the [!type] marker from content
        first.content:remove(1)
        
        -- Map Obsidian callout types to Quarto
        local quarto_type = callout_type:lower()
        if quarto_type == "margin" then
          -- Create margin div
          return pandoc.Div(el.content, {class = "column-margin"})
        else
          -- Create Quarto callout
          return pandoc.Div(
            el.content,
            {class = "callout-" .. quarto_type}
          )
        end
      end
    end
  end
  return el
end

-- Remove first H1 if it matches the document title
local doc_title = nil

function Meta(meta)
  if meta.title then
    doc_title = pandoc.utils.stringify(meta.title)
  end
  return meta
end

function Header(el)
  if el.level == 1 and doc_title then
    local header_text = pandoc.utils.stringify(el.content)
    if header_text == doc_title then
      return {}  -- Remove duplicate title
    end
  end
  return el
end
