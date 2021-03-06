function varargout = imgpro(varargin)
% IMGPRO MATLAB code for imgpro.fig
%      IMGPRO, by itself, creates a new IMGPRO or raises the existing
%      singleton*.
%
%      H = IMGPRO returns the handle to a new IMGPRO or the handle to
%      the existing singleton*.
%
%      IMGPRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMGPRO.M with the given input arguments.
%
%      IMGPRO('Property','Value',...) creates a new IMGPRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imgpro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imgpro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imgpro

% Last Modified by GUIDE v2.5 18-Dec-2018 00:22:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imgpro_OpeningFcn, ...
                   'gui_OutputFcn',  @imgpro_OutputFcn, ...
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


% --- Executes just before imgpro is made visible.
function imgpro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imgpro (see VARARGIN)

% Choose default command line output for imgpro
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes imgpro wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = imgpro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2
tform = affine2d([1 0 0; 1.2 1 0; 0 0 1]);
B = imwarp(im2,tform);
axes(handles.axes1);
imshow(B);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2
tform = affine2d([1 1.2 0; 0 1 0; 0 0 1]);
B = imwarp(im2,tform);
axes(handles.axes1);
imshow(B);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2
tform = affine2d([1 1.2 0; 1.2 1 0; 0 0 1]);
B = imwarp(im2,tform);
axes(handles.axes1);
imshow(B);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global im2
tform = affine2d([8 0 0; 0 1 0; 0 0 1]);
B = imwarp(im2,tform);
axes(handles.axes1);
imshow(B);
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2
tform = affine2d([1 0 0; 0 8 0; 0 0 1]);
B = imwarp(im2,tform);
axes(handles.axes1);
imshow(B);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2 
rotate90=imrotate(im2,90) ;
axes(handles.axes1);
imshow(rotate90);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2 
rotate45=imrotate(im2,45) ;
axes(handles.axes1);
imshow(rotate45);

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global im im2 
[path,user_cance]=imgetfile();
if user_cance 
    msgbox(sprintf('Error'),'Error','Error');
end
im = imread(path);
im = im2double(im);
im2 =im ;
axes(handles.axes1);
imshow(im);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im
axes(handles.axes1);
imshow(im);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2
tform = projective2d([0.98 -0.17 0.001; 0.17  0.98 0.01 ; 0 0 1]);
B = imwarp(im2,tform);
axes(handles.axes1);
imshow(B);