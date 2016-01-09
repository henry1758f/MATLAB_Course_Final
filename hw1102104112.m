function varargout = hw1102104112(varargin)
% HW1102104112 MATLAB code for hw1102104112.fig
%      HW1102104112, by itself, creates a new HW1102104112 or raises the existing
%      singleton*.
%
%      H = HW1102104112 returns the handle to a new HW1102104112 or the handle to
%      the existing singleton*.
%
%      HW1102104112('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HW1102104112.M with the given input arguments.
%
%      HW1102104112('Property','Value',...) creates a new HW1102104112 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hw1102104112_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hw1102104112_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hw1102104112

% Last Modified by GUIDE v2.5 09-Jan-2016 21:32:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hw1102104112_OpeningFcn, ...
                   'gui_OutputFcn',  @hw1102104112_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before hw1102104112 is made visible.
function hw1102104112_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hw1102104112 (see VARARGIN)

% Choose default command line output for hw1102104112
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
clc
axes(handles.axes1)
imshow('nofile.bmp')
% UIWAIT makes hw1102104112 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hw1102104112_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
adc_sim


% --- Executes on button press in pushbutton_close.
function pushbutton_close_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=questdlg('Are you sure to close hw1102104112?','Close?','yes','no','no');
if strcmp(a,'yes')
    close(handles.figure1);
    return
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_drawwave.
function pushbutton_drawwave_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_drawwave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f = str2double(get(handles.edit1,'String'));
%disp(f)
x = linspace(0,1/f*3,10000);
T = get(handles.uitable1,'Data')
% T1(1) = T{1,1}
% T1(2) = T{2,1}
% T1(3) = T{3,1}
% T1(4) = T{4,1}
% T1(5) = T{5,1}
% T1(6) = T{6,1}
% T1(7) = T{7,1}
% T1(8) = T{8,1}
% T1(9) = T{9,1}
% T1(10) = T{10,1}
% T1(11) = T{11,1}
for i=1:11
    temp = T{i,1}
    if(isempty(temp))
        T1(i) = 0
    else
        T1(i) = T{i,1}
    end
end
y1 = T1(1);
y2 = T1(2)*sin(1*2*pi*x*f);
y3 = T1(3)*sin(2*2*pi*x*f);
y4 = T1(4)*sin(3*2*pi*x*f);
y5 = T1(5)*sin(4*2*pi*x*f);
y6 = T1(6)*sin(5*2*pi*x*f);
y7 = T1(7)*sin(6*2*pi*x*f);
y8 = T1(8)*sin(7*2*pi*x*f);
y9 = T1(9)*sin(8*2*pi*x*f);
y10 = T1(10)*sin(9*2*pi*x*f);
y11 = T1(11)*sin(10*2*pi*x*f);
all = y1+y2+y3+y4+y5+y6+y7+y8+y9+y10+y11;
axes(handles.axes2)
plot(x,all)

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_choosefile.
function pushbutton_choosefile_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_choosefile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname] = uigetfile({'*.JPG';'*.BMP'},'Select a picture');
if isequal(filename,0)
   disp('No File been choose')
else
   disp(['User selected', fullfile(pathname, filename)])
   axes(handles.axes1)
   imshow(fullfile(pathname, filename))
   path = fullfile(pathname, filename);
   set(handles.uipanel_imchange,'Title',path)
end


% --- Executes on button press in pushbutton_savefile.
function pushbutton_savefile_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_savefile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname] = uiputfile({'*.jpg';'*.bmp'},'Save the picture');
path = fullfile(pathname, filename);
if isequal(filename,0)
   disp('No File been choose')
else
    
   if get(handles.popupmenu_imstyle,'value') == 1      %??????
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           figure(2)
           imshow(picIN)
           saveas(gcf,path)
           if (~get(handles.checkbox1,'Value'))
               close(figure(2))
           end
       elseif get(handles.popupmenu_imstyle,'value') == 2      %????
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picOUT = rgb2gray(picIN);
           figure(2)
           imshow(picOUT)
           saveas(gcf,path)
           if (~get(handles.checkbox1,'Value'))
               close(figure(2))
           end
       elseif get(handles.popupmenu_imstyle,'value') == 3      %?G????
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picIN = rgb2gray(picIN);
           picOUT = roicolor(picIN,100,255);
           figure(2)
           imshow(picOUT)
           saveas(gcf,path)
           if (~get(handles.checkbox1,'Value'))
               close(figure(2))
           end
       elseif get(handles.popupmenu_imstyle,'value') == 4      %HSV
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picOUT = rgb2hsv(picIN);
           figure(2)
           imshow(picOUT)
           saveas(gcf,path)
           if (~get(handles.checkbox1,'Value'))
               close(figure(2))
           end
       elseif get(handles.popupmenu_imstyle,'value') == 5      %NISC
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picOUT = rgb2ntsc(picIN);
           figure(2)
           imshow(picOUT)
           saveas(gcf,path)
           if (~get(handles.checkbox1,'Value'))
               close(figure(2))
           end
       elseif get(handles.popupmenu_imstyle,'value') == 6      %?t?????G
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picOUT = imcomplement(picIN);
           figure(2)
           imshow(picOUT)
           saveas(gcf,path)
           if (~get(handles.checkbox1,'Value'))
               close(figure(2))
           end
    end
end


% --- Executes on selection change in popupmenu_imstyle.
function popupmenu_imstyle_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_imstyle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_imstyle contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_imstyle


% --- Executes during object creation, after setting all properties.
function popupmenu_imstyle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_imstyle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_doit.
function pushbutton_doit_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_doit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isequal(get(handles.uipanel_imchange,'Title'),'No File been choose')
       disp('No file!')
   else
       if get(handles.popupmenu_imstyle,'value') == 1      
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           axes(handles.axes1)
           imshow(picIN)
       elseif get(handles.popupmenu_imstyle,'value') == 2      %????
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picOUT = rgb2gray(picIN);
           axes(handles.axes1)
           imshow(picOUT)
       elseif get(handles.popupmenu_imstyle,'value') == 3      %?G????
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picIN = rgb2gray(picIN);
           picOUT = roicolor(picIN,100,255);
           axes(handles.axes1)
           imshow(picOUT)
       elseif get(handles.popupmenu_imstyle,'value') == 4      %HSV
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picOUT = rgb2hsv(picIN);
           axes(handles.axes1)
           imshow(picOUT)
       elseif get(handles.popupmenu_imstyle,'value') == 5      %NISC
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picOUT = rgb2ntsc(picIN);
           axes(handles.axes1)
           imshow(picOUT)
       elseif get(handles.popupmenu_imstyle,'value') == 6      %?t?????G
           picIN = imread(get(handles.uipanel_imchange,'Title'));
           picOUT = imcomplement(picIN);
           axes(handles.axes1)
           imshow(picOUT)
       end
   
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function uitable1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
