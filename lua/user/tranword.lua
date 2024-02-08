-- 获取当前光标所在位置的单词
local function getCurrentWord()
  -- -- 获取光标所在的行和列
  -- local line = vim.fn.line('.')
  -- local col = vim.fn.col('.')

  -- 使用 expand() 函数获取当前单词
  local currentWord = vim.fn.expand('<cword>')
  return currentWord
end

-- 替换当前的词汇
local function replaceCurrentWord(translation)
  -- 获取光标所在的行和列
  local line = vim.fn.line('.')
  local currentLine = vim.fn.getline(line)
  local currentWord = vim.fn.expand('<cword>')
  -- 寻找当前单词的开始位置
  local first_char = string.find(currentLine, currentWord, 1, true)

  vim.cmd('echo ' .. first_char)
  -- 如果找到了开始和结束位置，则进行替换
  local newLine = currentLine:sub(1, first_char-1) .. translation .. currentLine:sub(first_char + string.len(currentWord), -1)
  vim.fn.setline(line, newLine)
end

 -- apple --

-- 使用系统的函数输出
local function translation(word)
  -- 如何这个word 为空
  if word == "" then
    return
  end

  local crow_command=string.format("crow -s zh-CN -t en %s -j",word)

  local handle = io.popen(crow_command)
  local result = handle:read("*a")

-- 使用 Neovim 的 JSON 模块解析 JSON 数据
  local decoded_result = vim.fn.json_decode(result)
  handle:close()


  -- 提取翻译文本
  local return_translation = decoded_result.translation
  return  return_translation
end

-- 追加在当前光标后面
local function appendCurrentWord(word)
  -- 获取光标所在的行和列
  local line = vim.fn.line('.')
  local col = vim.fn.col('.')
  local currentLine = vim.fn.getline(line)
  local newLine = currentLine:sub(1, col) ..word.. currentLine:sub(col, -1) 
  vim.fn.setline(line, newLine)
  vim.fn.cursor(line, col + #word)
end

-- 翻译当前单词并替换
-- tRanslationsOftware
-- translation software
-- cOnfirmt His wOrd
-- 根据文本类型进行一些处理
local function define_processing(words)
  --如何是python文本
  if vim.bo.filetype == "python" then
    --单词中间添加下划线
    return words:gsub("%s+", "_")
  end
  if vim.bo.filetype == "lua" then
    -- 将每个单词首字母大写
    local Words = words:gsub("(%a)(%w*)", function(first, rest)
      return first:upper() .. rest
    end)
    local camelWords = Words:gsub("%s+", "")
    -- 将首字母小写
    camelWords = camelWords:sub(1, 1):lower() .. camelWords:sub(2)
    return camelWords
  end
  -- if vim.bo.filetype == "rust" then
  --
  -- end
  --
  -- if vim.bo.filetype == "c" or vim.bo.filetype == "cpp" then
  --
  -- end
  return words
end


function Translate_current_word_and_replace ()
  -- 获取当前光标所在位置的单词
  local currentWord = getCurrentWord()
  local return_translation=translation(currentWord)
  replaceCurrentWord(return_translation)
end

--- 翻译定义
function trans_definition ()
  vim.fn.system("fcitx5-remote -o")
  local currentWord = vim.fn.input("input:")
  --将fcitx输入法切换到中文模式
  local return_translation=translation(currentWord)
  local return_words=define_processing(return_translation)
  appendCurrentWord(return_words)
  vim.fn.system("fcitx5-remote -c")
  vim.fn.feedkeys("a")
end


vim.cmd([[
  imap <c-d> <esc>:lua trans_definition()<CR>
]])

-- TODO: 1. 根据文本类型进行一些代码格式化如python rust c c++等

