def minilang(prompt)
  reg = 0
  stack = []
  commands = prompt.split
  # p commands
  commands.each do |command|
    # p command
    case command
    when 'PUSH'
      stack << reg
    when 'ADD'
      val = stack.pop
      reg = val + reg
    when 'SUB'
      val = stack.pop
      reg = reg - val
    when 'MULT'
      val = stack.pop
      reg = val * reg
    when 'DIV'
      val = stack.pop
      reg = reg / val
    when 'MOD'
      val = stack.pop
      reg = reg % val
    when 'POP'
      reg = stack.pop
    when 'PRINT'
      puts reg
    else
      reg = Integer(command)
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
