uiopen('D:\LabJack\T4data\TC_Wheel_TTL_0.xls',1)
figure;
plot(AIN0.Time,AIN0.v0)
figure;hold on
plot(AIN0TTL0.Time,AIN0TTL0.v0)
plot(AIN0TTL0.Time,AIN0TTL0.v1)
plot(AIN0TTL0.Time,(AIN0TTL0.v0-2.7)*100)
TTLData=[TCWheelTTL0.v0;TCWheelTTL1.v0;TCWheelTTL2.v0];
timeLine=[TCWheelTTL0.Time;TCWheelTTL1.Time;TCWheelTTL2.Time];
figure;hold on
plot(timeLine,TTLData)
breathingProbe=TTLData
TTLData=[TCWheelTTL0.v3;TCWheelTTL1.v3;TCWheelTTL2.v3];
plot(timeLine,TTLData)
WheelB=[TCWheelTTL0.v2;TCWheelTTL1.v2;TCWheelTTL2.v2];
WheelA=[TCWheelTTL0.v1;TCWheelTTL1.v1;TCWheelTTL2.v1];
plot(timeLine,WheelA)
plot(timeLine,WheelB)
TTLData=[TCWheelTTL4.v3;TCWheelTTL5.v3;TCWheelTTL6.v3];
timeLine=[TCWheelTTL4.Time;TCWheelTTL5.Time;TCWheelTTL6.Time];
figure;hold on
plot(timeLine,TTLData)
WheelA=[TCWheelTTL4.v1;TCWheelTTL5.v1;TCWheelTTL6.v1];
figure;hold on
plot(timeLine,WheelA)


labels={'Time','AIN0','DIO4','DIO5','DIO6','AIN0y','DIO4y','DIO5y','DIO6y'};
LJSdata=readLJStreamData(fileName,labels)