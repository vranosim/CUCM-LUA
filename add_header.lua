M = {}
 
trace.enable()
  
  function M.inbound_INVITE(msg) 
      
    trace.format("LUA-TRACE: INITIALIZE LUA SCRIPT")
    
    local headerTo = msg:getHeader("To")
    trace.format(headerTo)
    
    pt = msg:getPassThrough()
    
    if headerTo:find("777%d%d%d%d%d") then
        trace.format("Called number begins with 777")
        pt:addHeader("X-new-header", "777")
    else
        trace.format("called number does not begin with 777")
        pt:addHeader("X-new-header", "non-777")
    end
    
    end
   
return M
