import serial

# Configuração da porta serial
ser = serial.Serial(
    port='COM3',  # Substitua pelo nome da porta correta
    baudrate=19200,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS
)

# Envio do byte 10101010
byte_to_send = 0b10101010  # Byte em formato binário
ser.write(byte_to_send.to_bytes(1, byteorder='big'))

# Fechar a porta serial
ser.close()
