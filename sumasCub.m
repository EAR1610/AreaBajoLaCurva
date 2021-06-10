function varargout = sumasCub(varargin)
% SUMASCUB MATLAB code for sumasCub.fig
%      SUMASCUB, by itself, creates a new SUMASCUB or raises the existing
%      singleton*.
%
%      H = SUMASCUB returns the handle to a new SUMASCUB or the handle to
%      the existing singleton*.
%
%      SUMASCUB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUMASCUB.M with the given input arguments.
%
%      SUMASCUB('Property','Value',...) creates a new SUMASCUB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sumasCub_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sumasCub_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sumasCub

% Last Modified by GUIDE v2.5 31-May-2021 08:14:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sumasCub_OpeningFcn, ...
                   'gui_OutputFcn',  @sumasCub_OutputFcn, ...
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


% --- Executes just before sumasCub is made visible.
function sumasCub_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sumasCub (see VARARGIN)

% Choose default command line output for sumasCub
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sumasCub wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sumasCub_OutputFcn(hObject, eventdata, handles) 
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



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in regresar.
function regresar_Callback(hObject, eventdata, handles)
close(sumasCub);
gEIKS;


% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
set(handles.a, 'String', '');
set(handles.b, 'String', '');
set(handles.c, 'String', '');
set(handles.d, 'String', '');
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


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
a = str2double(get(handles.a, 'String'));
b = str2double(get(handles.b, 'String'));
c = str2double(get(handles.c, 'String'));
d = str2double(get(handles.d, 'String'));
limI = str2double(get(handles.inferior, 'String'));
limS = str2double(get(handles.superior, 'String'));
n = str2double(get(handles.rectangulos, 'String'));
tipoMt = get(handles.metodoResultado,'Value');

if isnan(a) || isnan(b) || isnan(c) || isnan(limI) || isnan(limS) || isnan(n)
    errordlg('Solamente se permiten valores númericos', 'Error');

elseif limS < limI
    errordlg('El limite inferior debe de ser menor al limite superior', 'Error');
    
elseif tipoMt == 1 %Método Izquierda
    
    deltaX = (limS - limI)/n;
    sumaR = 0;
    areaT = 0;
    xi = limI;
    for i=1:1:n
        area = deltaX *(a*xi^3 + b*xi^2 + c*xi + d);
        sumaR = sumaR + area;
        areaT = areaT + abs(area);
        xi = xi + deltaX;
    end
    resultado = num2str(sumaR);
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado)
    set(handles.areaTotal, 'String', num2str(areaT))
    
elseif tipoMt == 2 %Método Derecha
    
    deltaX = (limS - limI)/n;
    sumaR = 0;
    areaT = 0;
    xi = limI;
    for i=1:1:n
        xi = xi + deltaX;
        area = deltaX *(a*xi^3 + b*xi^2 + c*xi + d);
        sumaR = sumaR + area;
        areaT = areaT + abs(area);
    end
    resultado = num2str(sumaR);
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado)
    set(handles.areaTotal, 'String', num2str(areaT))
    
else %Método Puntos Medios
    
    deltaX = (limS - limI)/n;
    sumaR = 0;
    areaT = 0;
    for i=1:1:n
        xi = limI + (deltaX/2);
        limI = limI + deltaX;
        area = deltaX *(a*xi^3 + b*xi^2 + c*xi + d);
        sumaR = sumaR + area;
        areaT = areaT + abs(area);
    end
    resultado = num2str(sumaR);
    %resultado = vpa(sumaR,6);
    set(handles.resultado, 'String', resultado);
    set(handles.areaTotal, 'String', num2str(areaT))
end    


% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
%Obtenemos los valores
limIn = str2double(get(handles.inferior,'String'));
limSu = str2double(get(handles.superior,'String'));
rectan = str2double(get(handles.rectangulos,'String'));

a = get(handles.a,'String');
b = get(handles.b,'String');
c = get(handles.c,'String');
d = get(handles.d,'String');

%validaciones, si esta vacio o no son datos numericos
if isempty(a) || isempty(b) || isempty(c) || isempty(d) || isnan(limIn) || isnan(limSu)|| isnan(rectan) %Evaluamos antes de gráficar
    errordlg('Para graficar la función, se deben de colocar los valores necesarios', 'Error');

elseif limIn > limSu
    errordlg('El limite inferior debe de ser menor al limite superior', 'Error');
    
else
    
    %%Si pasa la validación, entonces se obtienen los valores para graficar
    %%la función.
    in = eval(get(handles.inferior,'String'));
    n = eval(get(handles.superior,'String'));
    %determinamos el eje x, por medio de los limites
    x = linspace(in,n,500);
    %concatenamos la funcion
    mifn = strcat(a,'*x.^3+',b,'*x.^2+',c,'*x+',d);
    fn = eval(mifn); 
    y = fn;
    plot(x,y)
    area(x,y)
    
end
% in = eval(get(handles.inferior,'String'))
% n = eval(get(handles.superior,'String'))
% x = linspace(in,n,500)
% c = eval (get(handles.funcion,'String'))
% y = c;
% plot(x,y)
% grid on
% area(x,y)



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
cla;
