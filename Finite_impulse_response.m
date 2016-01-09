function [sys,x0,str,ts] = Finite_impulse_response(t,x,u,flag,sample_time,volt)

switch flag,
  case 0,
    [sys,x0,str,ts]=mdlInitializeSizes(sample_time,volt);
  case 1,
    sys=mdlDerivatives(t,x,u);
  case 2,
    %sys=mdlUpdate(t,x,u);
  case 3,
    sys=mdlOutputs(t,x,u,volt);
  case 4,
    sys=mdlGetTimeOfNextVarHit(t,x,u);
  case 9,
    sys=mdlTerminate(t,x,u);
  otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end

function [sys,x0,str,ts]=mdlInitializeSizes(sample_time,volt)
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = length(volt)-1;
sizes.NumOutputs     = 1;
sizes.NumInputs      = 1;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;   % at least one sample time is needed

sys = simsizes(sizes);
x0  = zeros(length(volt)-1,1);
str = [];
ts  = [sample_time 0];

function sys=mdlDerivatives(t,x,u)
sys = [];

function sys=mdlUpdate(t,x,u)
sys = [u;x(1:end-1)];

function sys=mdlOutputs(t,x,u,volt)
sys = volt*[u;x];

function sys=mdlGetTimeOfNextVarHit(t,x,u)
sampleTime = 1;    %  Example, set the next hit to be one second later.
sys = t + sampleTime;

function sys=mdlTerminate(t,x,u)
sys = [];

% end mdlTerminate
