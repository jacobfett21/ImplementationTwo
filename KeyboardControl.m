
global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'w'
            brick.MoveMotor('A', 50);
            brick.MoveMotor('B', 50);
            
        case 's'     
            brick.MoveMotor('A', -50);
            brick.MoveMotor('B', -50);
        case 'a'
            brick.StopMotor('B'); 
            brick.StopMotor('A');
            brick.GyroCalibrate(4);
            angle = brick.GyroAngle(4);
            while (angle > -40)
                  brick.MoveMotor('A', 100);
                  angle = brick.GyroAngle(4);
            end
            brick.StopMotor('A');
            pause(0.5);
            angle = brick.GyroAngle(4);

            while (angle < -91)
                brick.MoveMotor('A', -10);
                angle = brick.GyroAngle(4);
            end
            brick.StopMotor('A');
            
       
        case 'd'
            brick.StopMotor('B'); 
            brick.StopMotor('A');
            brick.GyroCalibrate(4);
            angle = brick.GyroAngle(4);
            while (angle < 40)
                brick.MoveMotor('B', 100);
                angle = brick.GyroAngle(4);
            end
            brick.StopMotor('B');
            pause(0.5);
            angle = brick.GyroAngle(4);
            while (angle > 91)
                brick.MoveMotor('B', -10);
                angle = brick.GyroAngle(4);
            end
            brick.StopMotor('B');
            
        case 'r'
            brick.StopMotor('B'); 
            brick.StopMotor('A'); 
        
        case 'q'
            brick.StopMotor('B'); 
            brick.StopMotor('A');
            break;
        case 'j'
            brick.MoveMotor('C', -75);
            pause(1.6);
            brick.StopMotor('C');
        case 'k' 
            brick.MoveMotor('C', 75);
            pause(1.5);
            brick.StopMotor('C');
            
    end
end
CloseKeyboard();