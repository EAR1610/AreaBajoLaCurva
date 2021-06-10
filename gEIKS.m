function varargout = gEIKS(varargin)
% GEIKS MATLAB code for gEIKS.fig
%      GEIKS, by itself, creates a new GEIKS or raises the existing
%      singleton*.
%
%      H = GEIKS returns the handle to a new GEIKS or the handle to
%      the existing singleton*.
%
%      GEIKS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GEIKS.M with the given input arguments.
%
%      GEIKS('Property','Value',...) creates a new GEIKS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gEIKS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gEIKS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gEIKS

% Last Modified by GUIDE v2.5 25-May-2021 09:11:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gEIKS_OpeningFcn, ...
                   'gui_OutputFcn',  @gEIKS_OutputFcn, ...
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


% --- Executes just before gEIKS is made visible.
function gEIKS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gEIKS (see VARARGIN)

%axes(handles.axesl);
%[x,map]=imread('fondo.jpg');
%image(x);
%colormap(map);
%axis off
%sshold on

% Choose default command line output for gEIKS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gEIKS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gEIKS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
web 'http://matematicas.uis.edu.co/calculo2/sumas.pdf' -browser;

% --- Executes on button press in abrirCalcular.
function abrirCalcular_Callback(hObject, eventdata, handles)
tipoFn = get(handles.tipoFuncion,'Value');

if tipoFn == 1
    warndlg('Debe de seleccionar el tipo de función a evaluar', 'Advertencia');
elseif tipoFn == 2
    close(gEIKS);
    sumasR;
else
    close(gEIKS);
    sumasCub;  
end
     


function tituloProyecto_Callback(hObject, eventdata, handles)
% hObject    handle to tituloProyecto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tituloProyecto as text
%        str2double(get(hObject,'String')) returns contents of tituloProyecto as a double


% --- Executes during object creation, after setting all properties.
function tituloProyecto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tituloProyecto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tipoFuncion.
function tipoFuncion_Callback(hObject, eventdata, handles)
% hObject    handle to tipoFuncion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tipoFuncion contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipoFuncion


% --- Executes during object creation, after setting all properties.
function tipoFuncion_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
