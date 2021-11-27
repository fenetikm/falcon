-- in-place quicksort

-- show lsp warning
thing

-- @todo do the thing
function quicksort(t, start, endi, hey)
  start, endi = start or 1, endi or #t
  --partition w.r.t. first element
  if(endi - start < 1) then return t end
  local pivot = start
  for i = start + 1, endi do
    if t[i] <= t[pivot] then
      if i == pivot + 1 then
        t[pivot],t[pivot+1] = t[pivot+1],t[pivot]
      else
        t[pivot],t[pivot+1],t[i] = t[i],t[pivot],t[pivot+1]
      end
      pivot = pivot + 1
    end
  end
  
  t = quicksort(t, start, pivot - 1)
  return quicksort(t, pivot + 1, endi)
end

-- example
print(unpack(quicksort{5, 2, 7, 3, 4, 7, 1}))

function quicksort(t)
  if #t<2 then return t end
  local pivot=t[1]
  local a,b,c={},{},{}
  for _,v in ipairs(t) do
    if     v<pivot then a[#a+1]=v
    elseif v>pivot then c[#c+1]=v
    else                b[#b+1]=v
    end
  end
  c=quicksort(c)
  for _,v in ipairs(b) do a[#a+1]=v end
  for _,v in ipairs(c) do a[#a+1]=v end
  return a
end

-- on purpose errors to check LSP
function

