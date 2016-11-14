def log description, &block
  puts "Beginning " + description.upcase +  "..."
  to_return = block.call
  puts description.upcase + " complete. Returning: " + to_return.to_s
end

log "outer block" do
  log "inner block 01" do
    28
  end

  log "inner block 02" do
    93
  end

  "Status Report: PARTY TIME"
end
