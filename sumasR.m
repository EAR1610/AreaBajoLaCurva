function varargout = sumasR(varargin)
% SUMASR MATLAB code for sumasR.fig
%      SUMASR, by itself, creates a new SUMASR or raises the existing
%      singleton*.
%
%      H = SUMASR returns the handle to a new SUMASR or the handle to
%      the existing singleton*.
%
%      SUMASR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUMASR.M with the given input arguments.
%
%      SUMASR('Property','Value',...) creates a new SUMASR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sumasR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sumasR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sumasR

% Last Modified by GUIDE v2.5 31-May-2021 07:46:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sumasR_OpeningFcn, ...
                   'gui_OutputFcn',  @sumasR_OutputFcn, ...
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


% --- Executes just before sumasR is made visible.
function sumasR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sumasR (see VARARGIN)

% Choose default command line output for sumasR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sumasR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sumasR_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inferior_Callback(hObject, eventdata, handles)
% hObject    handle to inferior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inferior as text
%        str2double(get(hObject,'String')) returns contents of inferior as a double


% --- Executes during object creation, after setting all properties.
function inferior_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inferior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function superior_Callback(hObject, eventdata, handles)
% hObject    handle to superior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of superior as text
%        str2double(get(hObject,'String')) returns contents of superior as a double


% --- Executes during object creation, after setting all properties.
function superior_CreateFcn(hObject, eventdata, handles)
% hObject    handle to superior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rectangulos_Callback(hObject, eventdata, handles)
% hObject    handle to rectangulos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rectangulos as text
%        str2double(get(hObject,'String')) returns contents of rectangulos as a double


% --- Executes during object creation, after setting all properties.
function rectangulos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rectangulos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in metodo_izquierda.
function metodo_izquierda_Callback(hObject, eventdata, handles)
% hObject    handle to metodo_izquierda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%ax^2 + bx + c
a = str2double(get(handles.a, 'String'));
b = str2double(get(handles.b, 'String'));
c = str2double(get(handles.c, 'String'));
limI = str2double(get(handles.inferior, 'String'));
limS = str2double(get(handles.superior, 'String'));
n = str2double(get(handles.rectangulos, 'String'));

if isnan(a) || isnan(b) || isnan(c) || isnan(limI) || isnan(limS) || isnan(n)
    errordlg('Solamente se permiten valores n�mericos', 'Error');
else
    deltaX = (limS - limI)/n;
    sumaR = 0;
    xi = limI;
    for i=1:1:n
        area = deltaX *(a*xi^2 + b*xi + c);
        sumaR = sumaR + area;
        xi = xi + deltaX;
    end
    resultado = num2str(abs(sumaR));
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado)
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c_Callback(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c as text
%        str2double(get(hObject,'String')) returns contents of c as a double


% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in metodo_derecha.
function metodo_derecha_Callback(hObject, eventdata, handles)
% hObject    handle to metodo_derecha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(get(handles.a, 'String'));
b = str2double(get(handles.b, 'String'));
c = str2double(get(handles.c, 'String'));
limI = str2double(get(handles.inferior, 'String'));
limS = str2double(get(handles.superior, 'String'));
n = str2double(get(handles.rectangulos, 'String'));

if isnan(a) || isnan(b) || isnan(c) || isnan(limI) || isnan(limS) || isnan(n)
    errordlg('Solamente se permiten valores n�mericos', 'Error');
else 
    deltaX = (limS - limI)/n;
    sumaR = 0;
    xi = limI;
    for i=1:1:n
        xi = xi + deltaX;
        area = deltaX *(a*xi^2 + b*xi + c);
        sumaR = sumaR + area;
    end
    resultado = num2str(abs(sumaR));
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado)
end


% --- Executes on button press in metodo_medio.
function metodo_medio_Callback(hObject, eventdata, handles)
% hObject    handle to metodo_medio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(get(handles.a, 'String'));
b = str2double(get(handles.b, 'String'));
c = str2double(get(handles.c, 'String'));
limI = str2double(get(handles.inferior, 'String'));
limS = str2double(get(handles.superior, 'String'));
n = str2double(get(handles.rectangulos, 'String'));

if isnan(a) || isnan(b) || isnan(c) || isnan(limI) || isnan(limS) || isnan(n)
    errordlg('Solamente se permiten valores n�mericos', 'Error');
else
   deltaX = (limS - limI)/n;
    sumaR = 0;
    for i=1:1:n
        xi = limI + (deltaX/2);
        limI = limI + deltaX;
        area = deltaX *(a*xi^2 + b*xi + c);
        sumaR = sumaR + area;
    end
    resultado = num2str(abs(sumaR));
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado) 
end    



% --- Executes on button press in btnRegresar.
function btnRegresar_Callback(hObject, eventdata, handles)
close(sumasR);
gEIKS;


% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
set(handles.a, 'String', '');
set(handles.b, 'String', '');
set(handles.c, 'String', '');
set(handles.inferior, 'String', '');
set(handles.superior, 'String', '');
set(handles.rectangulos, 'String', '');
set(handles.resultado, 'String', '');
set(handles.areaTotal, 'String', '');



% --- Executes on selection change in metodoResultado.
function metodoResultado_Callback(hObject, eventdata, handles)
% hObject    handle to metodoResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns metodoResultado contents as cell array
%        contents{get(hObject,'Value')} returns selected item from metodoResultado


% --- Executes during object creation, after setting all properties.
function metodoResultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to metodoResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcularResultado.
function calcularResultado_Callback(hObject, eventdata, handles)
a = str2double(get(handles.a, 'String'));
b = str2double(get(handles.b, 'String'));
c = str2double(get(handles.c, 'String'));
limI = str2double(get(handles.inferior, 'String'));
limS = str2double(get(handles.superior, 'String'));
n = str2double(get(handles.rectangulos, 'String'));
tipoMt = get(handles.metodoResultado,'Value');

if isnan(a) || isnan(b) || isnan(c) || isnan(limI) || isnan(limS) || isnan(n)
    errordlg('Solamente se permiten valores n�mericos', 'Error');

elseif limS < limI
    errordlg('El limite inferior debe de ser menor al limite superior', 'Error');
    
elseif tipoMt == 1 %M�todo Izquierda

    deltaX = (limS - limI)/n;
    sumaR = 0;
    areaT = 0;
    xi = limI;
    for i=1:1:n
        area = deltaX *(a*xi^2 + b*xi + c);
        sumaR = sumaR + area;
        areaT = areaT + abs(area); 
        xi = xi + deltaX;
    end
    resultado = num2str(sumaR);
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado)
    set(handles.areaTotal, 'String', num2str(areaT))

elseif tipoMt == 2 %M�todo Derecha
   
    deltaX = (limS - limI)/n;
    sumaR = 0;
    areaT = 0;
    xi = limI;
    for i=1:1:n
        xi = xi + deltaX;
        area = deltaX *(a*xi^2 + b*xi + c);
        sumaR = sumaR + area;
        areaT = areaT + abs(area); 
    end
    resultado = num2str(sumaR);
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado)
    set(handles.areaTotal, 'String', num2str(areaT))

else %M�todo Puntos Medios

    deltaX = (limS - limI)/n;
    sumaR = 0;
    areaT = 0;
    for i=1:1:n
        xi = limI + (deltaX/2);
        limI = limI + deltaX;
        area = deltaX *(a*xi^2 + b*xi + c);
        sumaR = sumaR + area;
        areaT = areaT + abs(area); 
    end
    resultado = num2str(sumaR);
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado) 
    set(handles.areaTotal, 'String', num2str(areaT))

end


% --- Executes on button press in grafica.
function grafica_Callback(hObject, eventdata, handles)
limIn = str2double(get(handles.inferior,'String'));
limSu = str2double(get(handles.superior,'String'));
rectan = str2double(get(handles.rectangulos,'String'));

a = get(handles.a,'String');
b = get(handles.b,'String');
c = get(handles.c,'String');

if isempty(a) || isempty(b) || isempty(c) || isnan(limIn) || isnan(limSu)|| isnan(rectan) %Evaluamos antes de gr�ficar
    errordlg('Para graficar la funci�n, se deben de colocar los valores necesarios', 'Error');

elseif limIn > limSu
    errordlg('El limite inferior debe de ser menor al limite superior', 'Error');

else
    
    %%Si pasa la validaci�n, entonces se obtienen los valores para graficar
    %%la funci�n.
    in = eval(get(handles.inferior,'String'));
    n = eval(get(handles.superior,'String'));
    x = linspace(in,n,500);
    mifn = strcat(a,'*x.^2+',b,'*x+',c);
    fn = eval(mifn);
    y = fn;
    plot(x,y)
    grid on
    area(x,y)
    
end




function funcion_Callback(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcion as text
%        str2double(get(hObject,'String')) returns contents of funcion as a double


% --- Executes during object creation, after setting all properties.
function funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in limpiarGrafica.
function limpiarGrafica_Callback(hObject, eventdata, handles)
% hObject    handle to limpiarGrafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;
