$indents = 0
$space = " "

def log description, &block
  puts $space * $indents + "Beginning " + description.upcase +  "..."
  $indents = $indents + 1
  to_return = block.call
  $indents = $indents - 1
  puts $space * $indents + description.upcase + " complete. Returning: " + to_return.to_s
end

log "outer block" do
  log "inner block 01" do
    log "inner block 01a" do
      "I'm very cozy!"
    end
    
    28
  end

  log "inner block 02" do
    93
  end

  "Status Report: PARTY TIME"
end
