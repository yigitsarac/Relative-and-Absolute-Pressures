% This program is designed to calculate through the pipe line and relative
% and absolute pressures at station that places between lake and hotel.

L = input (' Please define the total length of the pipeline in meters: ');
L1 = input (' Please define the length of the pipeline from the lake to the station in meters: ');
L2 = input (' Please define the length of the pipeline from the station to the hotel in meters: ');
D = input (' Please define the diameter of the pipeline in centimeters: ');
fr = input (' Please define the friction factor of the pipeline: '); 

Pi = 3.14 ; % Pi number
g= 9.81 ; % Gravitational Acceleration
gamma = 9.81 ; 

% Bernaulli between lake and hotel.
 

VA = 0 ;
VB = 0 ;
PA = 101.3 ;  % Atmospheric Pressure
PB = 101.3 ;  % Atmospheric Pressure
ZA = 6 ;
ZB = 0 ;

hk_AB = ZA ;

V_AB = sqrt( ((D/100)/fr) * ((hk_AB) / L ) * (2*g) ) ; 
A_AB = ( Pi * (D/100)^2 ) / 4 ;

Q = ( V_AB ) * ( A_AB ) ;

% Bernaulli between station and hotel.

VA = 0 ;
ZA = 0 ;
ZC = 3 ; 
V_AC = V_AB ;
VC = V_AB ;

hk_AC = ( fr * (V_AC^2) * L1 ) / ( (D/100) * 2*g ) ; 

% Relative Pressure at station 
 
PC = ( -1 * ( (VC^2) / 2*g ) - ZC - hk_AC ) * gamma ;


% Absolute Pressure at station

PC_a = ( ( PA / gamma ) - ( (VC^2)/ 2*g ) - ZC - hk_AC ) * gamma ;