def task_tracker(text)
  if text.match(/#TODO/)
    return "Todo found!"
  else
    return "No todo found"
  end
end