import subprocess,os
print(os.getcwd())
#os.open('touch','shakeer')
#os.Popen('ls')
p=subprocess.Popen(["echo","Hello World"],stdout=subprocess.PIPE)
print(p.communicate())

host=input("Enter the host to be pinged: ")
p1=subprocess.Popen(['ping','-c 200',host],stdout=subprocess.PIPE)
print(p1.communicate())[0]
