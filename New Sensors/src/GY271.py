import smbus
import time
 
# Get I2C bus
bus = smbus.SMBus(1)
 
# HMC5883 address, 0x1E
bus.write_byte_data(0x1E, 0X00, 0x60)
bus.write_byte_data(0x1E, 0x02, 0x00)
 
time.sleep(0.5)
 
# HMC5883 address, 0x1E and Read data
data = bus.read_i2c_block_data(0x1E, 0x03, 6)
 
# Convert the data
xMag = data[0] * 256 + data[1]
if xMag > 32767 :
	xMag -= 65536
 
zMag = data[2] * 256 + data[3]
if zMag > 32767 :
	zMag -= 65536
 
yMag = data[4] * 256 + data[5]
if yMag > 32767 :
	yMag -= 65536
 
# Output data to screen
print ("Magnetic field in X-Axis : %d" %xMag)
print ("Magnetic field in Y-Axis : %d" %yMag)
print ("Magnetic field in Z-Axis : %d" %zMag)
