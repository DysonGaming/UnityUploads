#!/usr/bin/env pybricks-micropython
from pybricks.hubs import EV3Brick
from pybricks.ev3devices import (Motor, TouchSensor, ColorSensor,
                                 InfraredSensor, UltrasonicSensor, GyroSensor)
from pybricks.parameters import Port, Stop, Direction, Button, Color
from pybricks.tools import wait, StopWatch, DataLog
from pybricks.robotics import DriveBase
from pybricks.media.ev3dev import SoundFile, ImageFile


# This program requires LEGO EV3 MicroPython v2.0 or higher.
# Click "Open user guide" on the EV3 extension tab for more information.


# Initialize the EV3 Brick.
ev3 = EV3Brick()
ev3.speaker.beep()

# Initialize the motors.
left_motor = Motor(Port.B)
right_motor = Motor(Port.C)
ARM_motor = Motor(Port.A)
dipshit_motor = Motor(Port.D)

# Initialize the Ultrasonic Sensor. It is used to detect
# obstacles as the robot drives around.
color_sensor = ColorSensor(Port.S2)
obstacle_sensor = UltrasonicSensor(Port.S1)

# Initialize the drive base.
robot = DriveBase(left_motor, right_motor, wheel_diameter=55.5, axle_track=104)

while True:

    # Fetch Ground color for obstacle avoidance.
    color = color_sensor.color()

    if color == Color.BLACK:
        ev3.speaker.beep()
        robot.straight(-65)
        robot.turn(145)     
    else:

        # Begin driving forward
        robot.drive(170,0)
        
        if obstacle_sensor.distance() < 200: # Approx 12 cm/2

            while obstacle_sensor.distance() < 200: # Approx 12 cm/2
                # GO FUCKING CRAZY 
                ev3.speaker.beep()
                robot.drive(350,0)

                if obstacle_sensor.distance() < 200: # Approx 8 cm
 
                    dipshit_motor.run_target(6000,360)
                    wait(1)
                    dipshit_motor.run_target(6000,0)



