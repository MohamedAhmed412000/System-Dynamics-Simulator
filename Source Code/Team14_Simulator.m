function varargout = Team14_Simulator(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Team14_Simulator_OpeningFcn, ...
                   'gui_OutputFcn',  @Team14_Simulator_OutputFcn, ...
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

function Team14_Simulator_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
axes(handles.Signal);
cla reset;grid on;
axes(handles.SS);
cla reset;grid on;
set(handles.Y4,'enable','off','string','');
set(handles.Y3,'enable','off','string','');
set(handles.Y2,'enable','off','string','');
set(handles.Y1,'enable','off','string','');
set(handles.Y0,'enable','off','string','');
set(handles.U4,'enable','off','string','');
set(handles.U3,'enable','off','string','');
set(handles.U2,'enable','off','string','');
set(handles.U1,'enable','off','string','');
set(handles.U0,'enable','off','string','');
set(handles.X1,'value',0,'visible','off');
set(handles.X2,'value',0,'visible','off');
set(handles.X3,'value',0,'visible','off');
set(handles.X4,'value',0,'visible','off');
set(handles.Step,'value',0,'enable','off');
set(handles.Impulse,'value',0,'enable','off');
set(handles.Random,'value',0);
set(handles.User,'value',0);
set(handles.Order,'enable','off','value',1);
set(handles.State_Space,'enable','off');
set(handles.StateVariables,'enable','off');
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');
set(handles.TA,'data',{},'enable','off');
set(handles.TB,'data',{},'enable','off');
set(handles.TC,'data',{},'enable','off');
set(handles.TD,'data',{},'enable','off');
set(handles.T0,'string','','enable','off');
set(handles.TF,'string','','enable','off');

function varargout = Team14_Simulator_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function Random_Callback(hObject, eventdata, handles)
set(handles.Order,'enable','on','value',1);
set(handles.User,'value',0);
set(handles.X1,'value',0,'visible','off');
set(handles.X2,'value',0,'visible','off');
set(handles.X3,'value',0,'visible','off');
set(handles.X4,'value',0,'visible','off');
set(handles.Y4,'enable','off','string','');
set(handles.Y3,'enable','off','string','');
set(handles.Y2,'enable','off','string','');
set(handles.Y1,'enable','off','string','');
set(handles.Y0,'enable','off','string','');
set(handles.U4,'enable','off','string','');
set(handles.U3,'enable','off','string','');
set(handles.U2,'enable','off','string','');
set(handles.U1,'enable','off','string','');
set(handles.U0,'enable','off','string','');
set(handles.Step,'value',0,'enable','off');
set(handles.Impulse,'value',0,'enable','off');
set(handles.State_Space,'enable','off');
set(handles.StateVariables,'enable','off');
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');
set(handles.T0,'string','','enable','off');
set(handles.TF,'string','','enable','off');
axes(handles.Signal);
cla reset;grid on;
axes(handles.SS);
cla reset;grid on;
set(handles.TA,'data',{},'enable','off');
set(handles.TB,'data',{},'enable','off');
set(handles.TC,'data',{},'enable','off');
set(handles.TD,'data',{},'enable','off');

function User_Callback(hObject, eventdata, handles)
set(handles.Order,'enable','on','value',1);
set(handles.X1,'value',0,'visible','off');
set(handles.X2,'value',0,'visible','off');
set(handles.X3,'value',0,'visible','off');
set(handles.X4,'value',0,'visible','off');
set(handles.Y4,'enable','off','string','');
set(handles.Y3,'enable','off','string','');
set(handles.Y2,'enable','off','string','');
set(handles.Y1,'enable','off','string','');
set(handles.Y0,'enable','off','string','');
set(handles.U4,'enable','off','string','');
set(handles.U3,'enable','off','string','');
set(handles.U2,'enable','off','string','');
set(handles.U1,'enable','off','string','');
set(handles.U0,'enable','off','string','');
set(handles.Random,'value',0);
set(handles.Step,'value',0,'enable','off');
set(handles.Impulse,'value',0,'enable','off');
set(handles.State_Space,'enable','off');
set(handles.StateVariables,'enable','off');
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');
set(handles.T0,'string','','enable','off');
set(handles.TF,'string','','enable','off');
axes(handles.Signal);
cla reset;grid on;
axes(handles.SS);
cla reset;grid on;
set(handles.TA,'data',{},'enable','off');
set(handles.TB,'data',{},'enable','off');
set(handles.TC,'data',{},'enable','off');
set(handles.TD,'data',{},'enable','off');

function Order_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Order_Callback(hObject, eventdata, handles)
user=get(handles.User,'value');
random=get(handles.Random,'value');
h=get(hObject,'value'); 
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');
set(handles.T0,'string','','enable','off');
set(handles.TF,'string','','enable','off');
axes(handles.Signal);
cla reset;grid on;
axes(handles.SS);
cla reset;grid on;
set(handles.TA,'data',{},'enable','off');
set(handles.TB,'data',{},'enable','off');
set(handles.TC,'data',{},'enable','off');
set(handles.TD,'data',{},'enable','off');
if random==1 && user==0
if (h==1)
    set(handles.Step,'value',0,'enable','off');
    set(handles.Impulse,'value',0,'enable','off');
    set(handles.State_Space,'enable','off');
    set(handles.StateVariables,'enable','off');
    set(handles.PlotInput,'enable','off');
    set(handles.PlotOutput,'enable','off');
    set(handles.Y4,'enable','off','string','');
    set(handles.Y3,'enable','off','string','');
    set(handles.Y2,'enable','off','string','');
    set(handles.Y1,'enable','off','string','');
    set(handles.Y0,'enable','off','string','');
    set(handles.U4,'enable','off','string','');
    set(handles.U3,'enable','off','string','');
    set(handles.U2,'enable','off','string','');
    set(handles.U1,'enable','off','string','');
    set(handles.U0,'enable','off','string','');
    set(handles.X1,'value',0,'visible','off');
    set(handles.X2,'value',0,'visible','off');
    set(handles.X3,'value',0,'visible','off');
    set(handles.X4,'value',0,'visible','off');
else if (h==2)
        r1=randi([-100,100],[1,10])/10;
        set(handles.Y4,'enable','off','string',num2str(r1(1)));
        set(handles.Y3,'enable','off','string',num2str(r1(2)));
        set(handles.Y2,'enable','off','string',num2str(r1(3)));
        set(handles.Y1,'enable','off','string',num2str(r1(4)));
        set(handles.Y0,'enable','off','string',num2str(r1(5)));
        set(handles.U4,'enable','off','string',num2str(r1(6)));
        set(handles.U3,'enable','off','string',num2str(r1(7)));
        set(handles.U2,'enable','off','string',num2str(r1(8)));
        set(handles.U1,'enable','off','string',num2str(r1(9)));
        set(handles.U0,'enable','off','string',num2str(r1(10)));
        set(handles.X1,'value',0,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','on','enable','off');
        set(handles.X3,'value',0,'visible','on','enable','off');
        set(handles.X4,'value',0,'visible','on','enable','off');
        set(handles.Step,'value',0,'enable','on');
        set(handles.Impulse,'value',0,'enable','on');
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
else if (h==3)
        r1=randi([-100,100],[1,8])/10;
        set(handles.Y4,'enable','off','string','0');
        set(handles.Y3,'enable','off','string',num2str(r1(1)));
        set(handles.Y2,'enable','off','string',num2str(r1(2)));
        set(handles.Y1,'enable','off','string',num2str(r1(3)));
        set(handles.Y0,'enable','off','string',num2str(r1(4)));
        set(handles.U4,'enable','off','string','0');
        set(handles.U3,'enable','off','string',num2str(r1(5)));
        set(handles.U2,'enable','off','string',num2str(r1(6)));
        set(handles.U1,'enable','off','string',num2str(r1(7)));
        set(handles.U0,'enable','off','string',num2str(r1(8)));
        set(handles.Step,'value',0,'enable','on');
        set(handles.Impulse,'value',0,'enable','on');
        set(handles.State_Space,'enable','on')
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
        set(handles.X1,'value',0,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','on','enable','off');
        set(handles.X3,'value',0,'visible','on','enable','off');
        set(handles.X4,'value',0,'visible','off');
else if (h==4)
        r1=randi([-100,100],[1,6])/10;
        set(handles.Y4,'enable','off','string','0');
        set(handles.Y3,'enable','off','string','0');
        set(handles.Y2,'enable','off','string',num2str(r1(1)));
        set(handles.Y1,'enable','off','string',num2str(r1(2)));
        set(handles.Y0,'enable','off','string',num2str(r1(3)));
        set(handles.U4,'enable','off','string','0');
        set(handles.U3,'enable','off','string','0');
        set(handles.U2,'enable','off','string',num2str(r1(4)));
        set(handles.U1,'enable','off','string',num2str(r1(5)));
        set(handles.U0,'enable','off','string',num2str(r1(6)));
        set(handles.Step,'value',0,'enable','on');
        set(handles.Impulse,'value',0,'enable','on');
        set(handles.State_Space,'enable','on')
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
        set(handles.X1,'value',0,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','on','enable','off');
        set(handles.X3,'value',0,'visible','off');
        set(handles.X4,'value',0,'visible','off');
else if (h==5)
        r1=randi([-100,100],[1,4])/10;
        set(handles.Y4,'enable','off','string','0');
        set(handles.Y3,'enable','off','string','0');
        set(handles.Y2,'enable','off','string','0');
        set(handles.Y1,'enable','off','string',num2str(r1(1)));
        set(handles.Y0,'enable','off','string',num2str(r1(2)));
        set(handles.U4,'enable','off','string','0');
        set(handles.U3,'enable','off','string','0');
        set(handles.U2,'enable','off','string','0');
        set(handles.U1,'enable','off','string',num2str(r1(3)));
        set(handles.U0,'enable','off','string',num2str(r1(4)));
        set(handles.Step,'value',0,'enable','on');
        set(handles.Impulse,'value',0,'enable','on');
        set(handles.State_Space,'enable','on')
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
        set(handles.X1,'value',1,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','off');
        set(handles.X3,'value',0,'visible','off');
        set(handles.X4,'value',0,'visible','off');
else if (h==6)
        r1=randi([-100,100],[1,2])/10;
        set(handles.Y4,'enable','off','string','0');
        set(handles.Y3,'enable','off','string','0');
        set(handles.Y2,'enable','off','string','0');
        set(handles.Y1,'enable','off','string','0');
        set(handles.Y0,'enable','off','string',num2str(r1(1)));
        set(handles.U4,'enable','off','string','0');
        set(handles.U3,'enable','off','string','0');
        set(handles.U2,'enable','off','string','0');
        set(handles.U1,'enable','off','string','0');
        set(handles.U0,'enable','off','string',num2str(r1(2)));
        set(handles.Step,'value',0,'enable','on');
        set(handles.Impulse,'value',0,'enable','on');
        set(handles.State_Space,'enable','on')
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
        set(handles.X1,'value',0,'visible','off');
        set(handles.X2,'value',0,'visible','off');
        set(handles.X3,'value',0,'visible','off');
        set(handles.X4,'value',0,'visible','off');
    end
    end
    end
    end
    end
end
else if user==1 && random==0
    if (h==1)
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
        set(handles.X1,'value',0,'visible','off');
        set(handles.X2,'value',0,'visible','off');
        set(handles.X3,'value',0,'visible','off');
        set(handles.X4,'value',0,'visible','off');
        set(handles.Y4,'enable','off','string','');
        set(handles.Y3,'enable','off','string','');
        set(handles.Y2,'enable','off','string','');
        set(handles.Y1,'enable','off','string','');
        set(handles.Y0,'enable','off','string','');
        set(handles.U4,'enable','off','string','');
        set(handles.U3,'enable','off','string','');
        set(handles.U2,'enable','off','string','');
        set(handles.U1,'enable','off','string','');
        set(handles.U0,'enable','off','string','');
else if (h==2)
        set(handles.Y4,'enable','on','string','');
        set(handles.Y3,'enable','on','string','');
        set(handles.Y2,'enable','on','string','');
        set(handles.Y1,'enable','on','string','');
        set(handles.Y0,'enable','on','string','');
        set(handles.U4,'enable','off','string','');
        set(handles.U3,'enable','off','string','');
        set(handles.U2,'enable','off','string','');
        set(handles.U1,'enable','off','string','');
        set(handles.U0,'enable','off','string','');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
        set(handles.X1,'value',0,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','on','enable','off');
        set(handles.X3,'value',0,'visible','on','enable','off');
        set(handles.X4,'value',0,'visible','on','enable','off');
else if (h==3)
        set(handles.Y4,'enable','off','string','0');
        set(handles.Y3,'enable','on','string','');
        set(handles.Y2,'enable','on','string','');
        set(handles.Y1,'enable','on','string','');
        set(handles.Y0,'enable','on','string','');
        set(handles.U4,'enable','off','string','0');
        set(handles.U3,'enable','off','string','');
        set(handles.U2,'enable','off','string','');
        set(handles.U1,'enable','off','string','');
        set(handles.U0,'enable','off','string','');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
        set(handles.X1,'value',0,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','on','enable','off');
        set(handles.X3,'value',0,'visible','on','enable','off');
        set(handles.X4,'value',0,'visible','off');
        set(handles.State_Space,'enable','off')
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
else if (h==4)
        set(handles.Y4,'enable','off','string','0');
        set(handles.Y3,'enable','off','string','0');
        set(handles.Y2,'enable','on','string','');
        set(handles.Y1,'enable','on','string','');
        set(handles.Y0,'enable','on','string','');
        set(handles.U4,'enable','off','string','0');
        set(handles.U3,'enable','off','string','0');
        set(handles.U2,'enable','off','string','');
        set(handles.U1,'enable','off','string','');
        set(handles.U0,'enable','off','string','');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
        set(handles.X1,'value',0,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','on','enable','off');
        set(handles.X3,'value',0,'visible','off');
        set(handles.X4,'value',0,'visible','off');
        set(handles.State_Space,'enable','off')
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
else if (h==5)
        set(handles.Y4,'enable','off','string','0');
        set(handles.Y3,'enable','off','string','0');
        set(handles.Y2,'enable','off','string','0');
        set(handles.Y1,'enable','on','string','');
        set(handles.Y0,'enable','on','string','');
        set(handles.U4,'enable','off','string','0');
        set(handles.U3,'enable','off','string','0');
        set(handles.U2,'enable','off','string','0');
        set(handles.U1,'enable','off','string','');
        set(handles.U0,'enable','off','string','');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
        set(handles.X1,'value',1,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','off');
        set(handles.X3,'value',0,'visible','off');
        set(handles.X4,'value',0,'visible','off');
        set(handles.State_Space,'enable','off')
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
else if (h==6)
        set(handles.Y4,'enable','off','string','0');
        set(handles.Y3,'enable','off','string','0');
        set(handles.Y2,'enable','off','string','0');
        set(handles.Y1,'enable','off','string','0');
        set(handles.Y0,'enable','on','string','');
        set(handles.U4,'enable','off','string','0');
        set(handles.U3,'enable','off','string','0');
        set(handles.U2,'enable','off','string','0');
        set(handles.U1,'enable','off','string','0');
        set(handles.U0,'enable','off','string','');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
        set(handles.State_Space,'enable','off')
        set(handles.StateVariables,'enable','off');
        set(handles.PlotInput,'enable','off');
        set(handles.PlotOutput,'enable','off');
        set(handles.X1,'value',0,'visible','on','enable','off');
        set(handles.X2,'value',0,'visible','on','enable','off');
        set(handles.X3,'value',0,'visible','on','enable','off');
        set(handles.X4,'value',0,'visible','on','enable','off');
    end
    end
    end
    end
    end
    end
    end
end

function Y4_Callback(hObject, eventdata, handles)
y04=get(handles.Y4,'string');y14=str2double(get(handles.Y4,'string'));
y03=get(handles.Y3,'string');y13=str2double(get(handles.Y3,'string'));
y02=get(handles.Y2,'string');y12=str2double(get(handles.Y2,'string'));
y01=get(handles.Y1,'string');y11=str2double(get(handles.Y1,'string'));
y00=get(handles.Y0,'string');y10=str2double(get(handles.Y0,'string'));
if (isempty(y04) || isempty(y03) || isempty(y02) || isempty(y01) || isempty(y00))
    set(handles.U4,'enable','off','string','');
    set(handles.U3,'enable','off','string','');
    set(handles.U2,'enable','off','string','');
    set(handles.U1,'enable','off','string','');
    set(handles.U0,'enable','off','string','');
    set(handles.State_Space,'enable','off');
    set(handles.StateVariables,'enable','off');
    set(handles.Step,'value',0,'enable','off');
    set(handles.Impulse,'value',0,'enable','off');
    set(handles.PlotInput,'enable','off');
    set(handles.PlotOutput,'enable','off');
else
    if (y14~=0)
        set(handles.U4,'enable','on','string','');
        set(handles.U3,'enable','on','string','');
        set(handles.U2,'enable','on','string','');
        set(handles.U1,'enable','on','string','');
        set(handles.U0,'enable','on','string','');
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','on','string','');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11==0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','off','string','0');
            set(handles.U0,'enable','on','string','');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.State_Space,'enable','on');
            set(handles.StateVariables,'enable','off');
        end    
        end
        end
        end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function Y4_CreateFcn(hObject, eventdata, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Y3_Callback(hObject, eventdata, handles)
y04=get(handles.Y4,'string');y14=str2double(get(handles.Y4,'string'));
y03=get(handles.Y3,'string');y13=str2double(get(handles.Y3,'string'));
y02=get(handles.Y2,'string');y12=str2double(get(handles.Y2,'string'));
y01=get(handles.Y1,'string');y11=str2double(get(handles.Y1,'string'));
y00=get(handles.Y0,'string');y10=str2double(get(handles.Y0,'string'));
if (isempty(y04) || isempty(y03) || isempty(y02) || isempty(y01) || isempty(y00))
    set(handles.U4,'enable','off','string','');
    set(handles.U3,'enable','off','string','');
    set(handles.U2,'enable','off','string','');
    set(handles.U1,'enable','off','string','');
    set(handles.U0,'enable','off','string','');
    set(handles.State_Space,'enable','off');
    set(handles.StateVariables,'enable','off');
    set(handles.Step,'value',0,'enable','off');
    set(handles.Impulse,'value',0,'enable','off');
    set(handles.PlotInput,'enable','off');
    set(handles.PlotOutput,'enable','off');
else
    if (y14~=0)
        set(handles.U4,'enable','on','string','');
        set(handles.U3,'enable','on','string','');
        set(handles.U2,'enable','on','string','');
        set(handles.U1,'enable','on','string','');
        set(handles.U0,'enable','on','string','');
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','on','string','');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11==0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','off','string','0');
            set(handles.U0,'enable','on','string','');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.State_Space,'enable','on');
            set(handles.StateVariables,'enable','off');
        end    
        end
        end
        end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function Y3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Y2_Callback(hObject, eventdata, handles)
y04=get(handles.Y4,'string');y14=str2double(get(handles.Y4,'string'));
y03=get(handles.Y3,'string');y13=str2double(get(handles.Y3,'string'));
y02=get(handles.Y2,'string');y12=str2double(get(handles.Y2,'string'));
y01=get(handles.Y1,'string');y11=str2double(get(handles.Y1,'string'));
y00=get(handles.Y0,'string');y10=str2double(get(handles.Y0,'string'));
if (isempty(y04) || isempty(y03) || isempty(y02) || isempty(y01) || isempty(y00))
    set(handles.U4,'enable','off','string','');
    set(handles.U3,'enable','off','string','');
    set(handles.U2,'enable','off','string','');
    set(handles.U1,'enable','off','string','');
    set(handles.U0,'enable','off','string','');
    set(handles.State_Space,'enable','off');
    set(handles.StateVariables,'enable','off');
    set(handles.Step,'value',0,'enable','off');
    set(handles.Impulse,'value',0,'enable','off');
    set(handles.PlotInput,'enable','off');
    set(handles.PlotOutput,'enable','off');
else
    if (y14~=0)
        set(handles.U4,'enable','on','string','');
        set(handles.U3,'enable','on','string','');
        set(handles.U2,'enable','on','string','');
        set(handles.U1,'enable','on','string','');
        set(handles.U0,'enable','on','string','');
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','on','string','');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11==0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','off','string','0');
            set(handles.U0,'enable','on','string','');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.State_Space,'enable','on');
            set(handles.StateVariables,'enable','off');
        end    
        end
        end
        end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function Y2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Y1_Callback(hObject, eventdata, handles)
y04=get(handles.Y4,'string');y14=str2double(get(handles.Y4,'string'));
y03=get(handles.Y3,'string');y13=str2double(get(handles.Y3,'string'));
y02=get(handles.Y2,'string');y12=str2double(get(handles.Y2,'string'));
y01=get(handles.Y1,'string');y11=str2double(get(handles.Y1,'string'));
y00=get(handles.Y0,'string');y10=str2double(get(handles.Y0,'string'));
if (isempty(y04) || isempty(y03) || isempty(y02) || isempty(y01) || isempty(y00))
    set(handles.U4,'enable','off','string','');
    set(handles.U3,'enable','off','string','');
    set(handles.U2,'enable','off','string','');
    set(handles.U1,'enable','off','string','');
    set(handles.U0,'enable','off','string','');
    set(handles.State_Space,'enable','off');
    set(handles.StateVariables,'enable','off');
    set(handles.Step,'value',0,'enable','off');
    set(handles.Impulse,'value',0,'enable','off');
    set(handles.PlotInput,'enable','off');
    set(handles.PlotOutput,'enable','off');
else
    if (y14~=0)
        set(handles.U4,'enable','on','string','');
        set(handles.U3,'enable','on','string','');
        set(handles.U2,'enable','on','string','');
        set(handles.U1,'enable','on','string','');
        set(handles.U0,'enable','on','string','');
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','on','string','');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11==0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','off','string','0');
            set(handles.U0,'enable','on','string','');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.State_Space,'enable','on');
            set(handles.StateVariables,'enable','off');
        end    
        end
        end
        end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function Y1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Y0_Callback(hObject, eventdata, handles)
y04=get(handles.Y4,'string');y14=str2double(get(handles.Y4,'string'));
y03=get(handles.Y3,'string');y13=str2double(get(handles.Y3,'string'));
y02=get(handles.Y2,'string');y12=str2double(get(handles.Y2,'string'));
y01=get(handles.Y1,'string');y11=str2double(get(handles.Y1,'string'));
y00=get(handles.Y0,'string');y10=str2double(get(handles.Y0,'string'));
if (isempty(y04) || isempty(y03) || isempty(y02) || isempty(y01) || isempty(y00))
    set(handles.U4,'enable','off','string','');
    set(handles.U3,'enable','off','string','');
    set(handles.U2,'enable','off','string','');
    set(handles.U1,'enable','off','string','');
    set(handles.U0,'enable','off','string','');
    set(handles.State_Space,'enable','off');
    set(handles.StateVariables,'enable','off');
    set(handles.Step,'value',0,'enable','off');
    set(handles.Impulse,'value',0,'enable','off');
    set(handles.PlotInput,'enable','off');
    set(handles.PlotOutput,'enable','off');
else
    if (y14~=0)
        set(handles.U4,'enable','on','string','');
        set(handles.U3,'enable','on','string','');
        set(handles.U2,'enable','on','string','');
        set(handles.U1,'enable','on','string','');
        set(handles.U0,'enable','on','string','');
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'value',0,'enable','off');
        set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','on','string','');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','on','string','');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','on','string','');
            set(handles.U0,'enable','on','string','');
            set(handles.State_Space,'enable','off');
            set(handles.StateVariables,'enable','off');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
    else if (y14==0 && y13==0 && y12==0 && y11==0)
            set(handles.U4,'enable','off','string','0');
            set(handles.U3,'enable','off','string','0');
            set(handles.U2,'enable','off','string','0');
            set(handles.U1,'enable','off','string','0');
            set(handles.U0,'enable','on','string','');
            set(handles.Step,'value',0,'enable','off');
            set(handles.Impulse,'value',0,'enable','off');
            set(handles.State_Space,'enable','on');
            set(handles.StateVariables,'enable','off');
        end    
        end
        end
        end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function Y0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function U4_Callback(hObject, eventdata, handles)
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
y10=str2double(get(handles.Y0,'string'));
u04=get(handles.U3,'string');
u03=get(handles.U3,'string');
u02=get(handles.U2,'string');
u01=get(handles.U1,'string');
u00=get(handles.U0,'string');
test=-1;
if (y14~=0)
        test=4;
    else if (y14==0 && y13~=0)
            test=3;
    else if (y14==0 && y13==0 && y12~=0)
            test=2;
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            test=1;    
        end
        end
        end
end
if (test==4)
    if (isempty(u04)||isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y14)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==3)
    if (isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==2)
    if (isempty(u02)||isempty(u01)||isempty(u00)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==1)
    if (isempty(u01)||isempty(u00)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
    end
    end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function U4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function U3_Callback(hObject, eventdata, handles)
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
y10=str2double(get(handles.Y0,'string'));
u04=get(handles.U3,'string');
u03=get(handles.U3,'string');
u02=get(handles.U2,'string');
u01=get(handles.U1,'string');
u00=get(handles.U0,'string');
test=-1;
if (y14~=0)
        test=4;
    else if (y14==0 && y13~=0)
            test=3;
    else if (y14==0 && y13==0 && y12~=0)
            test=2;
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            test=1;    
        end
        end
        end
end
if (test==4)
    if (isempty(u04)||isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y14)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==3)
    if (isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==2)
    if (isempty(u02)||isempty(u01)||isempty(u00)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==1)
    if (isempty(u01)||isempty(u00)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
    end
    end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function U3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function U2_Callback(hObject, eventdata, handles)
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
y10=str2double(get(handles.Y0,'string'));
u04=get(handles.U3,'string');
u03=get(handles.U3,'string');
u02=get(handles.U2,'string');
u01=get(handles.U1,'string');
u00=get(handles.U0,'string');
test=-1;
if (y14~=0)
        test=4;
    else if (y14==0 && y13~=0)
            test=3;
    else if (y14==0 && y13==0 && y12~=0)
            test=2;
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            test=1;    
        end
        end
        end
end
if (test==4)
    if (isempty(u04)||isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y14)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==3)
    if (isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==2)
    if (isempty(u02)||isempty(u01)||isempty(u00)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==1)
    if (isempty(u01)||isempty(u00)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
    end
    end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function U2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function U1_Callback(hObject, eventdata, handles)
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
y10=str2double(get(handles.Y0,'string'));
u04=get(handles.U3,'string');
u03=get(handles.U3,'string');
u02=get(handles.U2,'string');
u01=get(handles.U1,'string');
u00=get(handles.U0,'string');
test=-1;
if (y14~=0)
        test=4;
    else if (y14==0 && y13~=0)
            test=3;
    else if (y14==0 && y13==0 && y12~=0)
            test=2;
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            test=1;    
        end
        end
        end
end
if (test==4)
    if (isempty(u04)||isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y14)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==3)
    if (isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==2)
    if (isempty(u02)||isempty(u01)||isempty(u00)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==1)
    if (isempty(u01)||isempty(u00)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
    end
    end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function U1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function U0_Callback(hObject, eventdata, handles)
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
y10=str2double(get(handles.Y0,'string'));
u04=get(handles.U3,'string');
u03=get(handles.U3,'string');
u02=get(handles.U2,'string');
u01=get(handles.U1,'string');
u00=get(handles.U0,'string');
test=-1;
if (y14~=0)
        test=4;
    else if (y14==0 && y13~=0)
            test=3;
    else if (y14==0 && y13==0 && y12~=0)
            test=2;
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            test=1; 
    else if (y14==0 && y13==0 && y12==0 && y11==0)
            test=0;
        end
        end
        end
        end
end
if (test==4)
    if (isempty(u04)||isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y14)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==3)
    if (isempty(u03)||isempty(u02)||isempty(u01)||isempty(u00)||isempty(y13)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==2)
    if (isempty(u02)||isempty(u01)||isempty(u00)||isempty(y12)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==1)
    if (isempty(u01)||isempty(u00)||isempty(y11)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
else if (test==0)
    if (isempty(u00)||isempty(y10))
        set(handles.State_Space,'enable','off');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','off');
        set(handles.Impulse,'enable','off');
    else
        set(handles.State_Space,'enable','on');
        set(handles.StateVariables,'enable','off');
        set(handles.Step,'enable','on');
        set(handles.Impulse,'enable','on');
    end
    end
    end
    end
    end
end
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');

function U0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Step_Callback(hObject, eventdata, handles)
set(handles.Impulse,'value',0);
set(handles.PlotInput,'enable','on');
set(handles.PlotOutput,'enable','on');
set(handles.StateVariables,'enable','off');
set(handles.T0,'string','','enable','on');
set(handles.TF,'string','','enable','on');
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
X1=get(handles.X1,'value');
X2=get(handles.X2,'value');
X3=get(handles.X3,'value');
X4=get(handles.X4,'value');
if (y14~=0)
    set(handles.X1,'value',0,'enable','on');
    set(handles.X2,'value',0,'enable','on');
    set(handles.X3,'value',0,'enable','on');
    set(handles.X4,'value',0,'enable','on');    
    else if (y14==0 && y13~=0)
            set(handles.X1,'value',0,'enable','on');
            set(handles.X2,'value',0,'enable','on');    
            set(handles.X3,'value',0,'enable','on');
    else if (y14==0 && y13==0 && y12~=0)
            set(handles.X1,'value',0,'enable','on');
            set(handles.X2,'value',0,'enable','on');
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            set(handles.X1,'value',1,'enable','on');
            set(handles.StateVariables,'enable','on');
    else if X1==0 && X2==0 && X3==0 && X4==0
            set(handles.StateVariables,'enable','off'); 
        end
        end
        end
        end
end

function Impulse_Callback(hObject, eventdata, handles)
set(handles.Step,'value',0);
set(handles.PlotInput,'enable','on');
set(handles.PlotOutput,'enable','on');
set(handles.StateVariables,'enable','off');
set(handles.T0,'string','','enable','on');
set(handles.TF,'string','','enable','on');
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
X1=get(handles.X1,'value');
X2=get(handles.X2,'value');
X3=get(handles.X3,'value');
X4=get(handles.X4,'value');
if (y14~=0)
    set(handles.X1,'value',0,'enable','on');
    set(handles.X2,'value',0,'enable','on');
    set(handles.X3,'value',0,'enable','on');
    set(handles.X4,'value',0,'enable','on');    
    else if (y14==0 && y13~=0)
            set(handles.X1,'value',0,'enable','on');
            set(handles.X2,'value',0,'enable','on');    
            set(handles.X3,'value',0,'enable','on');
    else if (y14==0 && y13==0 && y12~=0)
            set(handles.X1,'value',0,'enable','on');
            set(handles.X2,'value',0,'enable','on');
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            set(handles.X1,'value',1,'enable','on');
            set(handles.StateVariables,'enable','on'); 
    else if X1==0 && X2==0 && X3==0 && X4==0
            set(handles.StateVariables,'enable','off'); 
        end        
        end
        end
        end
end

function PlotInput_Callback(hObject, eventdata, handles)
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
test=-1;
if (y14~=0)
    test=4;
    else if (y14==0 && y13~=0)
            test=3;
    else if (y14==0 && y13==0 && y12~=0)
            test=2;
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            test=1;
    else if (y14==0 && y13==0 && y12==0 && y11==0)
            test=0;
        end
        end
        end
        end
end 
TFF=get(handles.TF,'string');
TF=str2double(TFF);
if isempty(TFF)
    TF=10;
end
if TF<0
   TF=10;
end 
T00=get(handles.T0,'string');
test2=str2double(T00);
if (test2>TF || test2<0)
    T0=0;
else
    T0=test2;
end
if isempty(T00)
    T0=0;
end
step=get(handles.Step,'value');
impulse=get(handles.Impulse,'value');
t=-1:0.001:TF+1;
        if step==1 && impulse==0
            u=t>=T0;
            string='Unit step -order';
        else if step==0 && impulse==1
            u=t==T0;
            string='Impulse -order';
            end
        end
    axes(handles.Signal)
    plot(t,u)
    grid on
    xlabel('Time (sec)')
    ylabel('Input Signal')
    xlim([0 TF]);
    title(['Input Signal : ' string '-' num2str(test) '-'])
 
function PlotOutput_Callback(hObject, eventdata, handles)
a4=str2double(get(handles.Y4,'string'));
a3=str2double(get(handles.Y3,'string'));
a2=str2double(get(handles.Y2,'string'));
a1=str2double(get(handles.Y1,'string'));
a0=str2double(get(handles.Y0,'string'));
b4=str2double(get(handles.U4,'string'));
b3=str2double(get(handles.U3,'string'));
b2=str2double(get(handles.U2,'string'));
b1=str2double(get(handles.U1,'string'));
b0=str2double(get(handles.U0,'string'));
test=-1;
if (a4~=0)
        test=4;
    else if (a4==0 && a3~=0)
            test=3;
    else if (a4==0 && a3==0 && a2~=0)
            test=2;
    else if (a4==0 && a3==0 && a2==0 && a1~=0)
            test=1;
    else if (a4==0 && a3==0 && a2==0 && a1==0)
            test=0;
        end
        end
        end
        end
end
TFF=get(handles.TF,'string');
TF=str2double(TFF);
if isempty(TFF)
    TF=10;
end
if TF<0
   TF=10;
end 
T00=get(handles.T0,'string');
tet2=str2double(T00);
if (tet2>=TF || tet2<=0)
    T0=0;
else
    T0=tet2;
end
if isempty(T00)
    T0=0;
end
step=get(handles.Step,'value');
impulse=get(handles.Impulse,'value');
TF1=TF; TF=TF-TF/10;
NS=20000;
T=TF/NS;
t=-1:0.1:TF*NS;
u=t>=0;
y=zeros(1,NS);
y1=zeros(1,NS);
        if step==1 && impulse==0
            for k=5:NS
               y(k)=(((a1*y(k-1))/T)+((2*a2*y(k-1))/power(T,2))-((a2*y(k-2))/power(T,2))+((3*a3*y(k-1))/power(T,3))-((3*a3*y(k-2))/power(T,3))+((a3*y(k-3))/power(T,3))+((4*a4*y(k-1))/power(T,4))-((6*a4*y(k-2))/power(T,4))+((4*a4*y(k-3))/power(T,4))-((a4*y(k-4))/power(T,4))+((b4*u(k))/power(T,4))-((4*b4*u(k-1))/power(T,4))+((6*b4*u(k-2))/power(T,4))-((4*b4*u(k-3))/power(T,4))+((b4*u(k-4))/power(T,4))+((b3*u(k))/power(T,3))-((3*b3*u(k-1))/power(T,3))+((3*b3*u(k-2))/power(T,3))-((b3*u(k-3))/power(T,3))+((b2*u(k))/power(T,2))-((2*b2*u(k-1))/power(T,2))+((b2*u(k-2))/power(T,2))+((b1*u(k))/T)-((b1*u(k-1))/T)+(b0*u(k)))/(a0+(a4/power(T,4))+(a3/power(T,3))+(a2/power(T,2))+(a1/T));
            end
            for i=1:floor(9*T0/TF*NS/10)
                y(i)=0;
            end
            axes(handles.Signal)
            plot(y)
            grid on
            xlabel('Time (sec)')
            ylabel('Output Signal')
            xt=get(gca,'XTick');
            set(gca,'XTick',xt,'XTickLabel',xt*(TF1)/NS)
            title(['Output Signal : Unit step -order-' num2str(test) '-'])
        else if step==0 && impulse==1
            for k=6:NS
                y1(k)=(((a1*y1(k-1))/T)+((2*a2*y1(k-1))/power(T,2))-((a2*y1(k-2))/power(T,2))+((3*a3*y1(k-1))/power(T,3))-((3*a3*y1(k-2))/power(T,3))+((a3*y1(k-3))/power(T,3))+((4*a4*y1(k-1))/power(T,4))-((6*a4*y1(k-2))/power(T,4))+((4*a4*y1(k-3))/power(T,4))-((a4*y1(k-4))/power(T,4))+((b4*u(k))/power(T,4))-((4*b4*u(k-1))/power(T,4))+((6*b4*u(k-2))/power(T,4))-((4*b4*u(k-3))/power(T,4))+((b4*u(k-4))/power(T,4))+((b3*u(k))/power(T,3))-((3*b3*u(k-1))/power(T,3))+((3*b3*u(k-2))/power(T,3))-((b3*u(k-3))/power(T,3))+((b2*u(k))/power(T,2))-((2*b2*u(k-1))/power(T,2))+((b2*u(k-2))/power(T,2))+((b1*u(k))/T)-((b1*u(k-1))/T)+(b0*u(k)))/(a0+(a4/power(T,4))+(a3/power(T,3))+(a2/power(T,2))+(a1/T));
                y(k)=(y1(k)-y1(k-1))/T;
            end
            for i=1:floor(9*T0/TF*NS/10)
                y(i)=0;
            end
            axes(handles.Signal)
            plot(y)
            grid on
            xlabel('Time (sec)')
            ylabel('Output Signal')
            xt=get(gca,'XTick');
            set(gca,'XTick',xt,'XTickLabel',xt*(TF1)/NS)
            title(['Output Signal : Impulse -order-' num2str(test) '-'])
            end
        end

function State_Space_Callback(hObject, eventdata, handles)
y14=str2double(get(handles.Y4,'string'));
y13=str2double(get(handles.Y3,'string'));
y12=str2double(get(handles.Y2,'string'));
y11=str2double(get(handles.Y1,'string'));
y10=str2double(get(handles.Y0,'string'));
u14=str2double(get(handles.U4,'string'));
u13=str2double(get(handles.U3,'string'));
u12=str2double(get(handles.U2,'string'));
u11=str2double(get(handles.U1,'string'));
u10=str2double(get(handles.U0,'string'));
y=[y10,y11,y12,y13,y14];
u=[u10,u11,u12,u13,u14];
order=-1;
if (y14~=0)
        order=4;
    else if (y14==0 && y13~=0)
            order=3;
    else if (y14==0 && y13==0 && y12~=0)
            order=2;
    else if (y14==0 && y13==0 && y12==0 && y11~=0)
            order=1;
    else if (y14==0 && y13==0 && y12==0 && y11==0)
            order=0;
        end
        end
        end
        end
end
clc
if order~=0
    A=zeros(order,order);
    for i=1:order-1
        for j=1:order
            if(i+1==j)
                A(i,j)=1;
            else
                A(i,j)=0;
            end
        end
    end
    for i=order:-1:1
        A(order,i)=-1*y(i)/y(order+1);
    end
    B=zeros(order,1);
    B(order,1)=1/y(order+1);
    C=zeros(1,order);
    for i=1:order
        C(1,i)=u(i)-u(order+1)*y(i)/y(order+1);
    end
    D=u(order+1)./y(order+1);
else if order==0
    A=0;B=0;C=0;D=0;    
    end
end
set(handles.TA,'visible','on','data',cell(order,order));
set(handles.TB,'visible','on','data',cell(order,1));
set(handles.TC,'visible','on','data',cell(1,order));
set(handles.TD,'visible','on','data',cell(1,1));
set(handles.TA,'data',A,'enable','off');
set(handles.TB,'data',B,'enable','off');
set(handles.TC,'data',C,'enable','off');
set(handles.TD,'data',D,'enable','off');

function Reset_Callback(hObject, eventdata, handles)
set(handles.Y4,'enable','off','string','');
set(handles.Y3,'enable','off','string','');
set(handles.Y2,'enable','off','string','');
set(handles.Y1,'enable','off','string','');
set(handles.Y0,'enable','off','string','');
set(handles.U4,'enable','off','string','');
set(handles.U3,'enable','off','string','');
set(handles.U2,'enable','off','string','');
set(handles.U1,'enable','off','string','');
set(handles.U0,'enable','off','string','');
set(handles.Step,'value',0,'enable','off');
set(handles.Impulse,'value',0,'enable','off');
set(handles.Random,'value',0);
set(handles.User,'value',0);
set(handles.X1,'value',0,'visible','off');
set(handles.X2,'value',0,'visible','off');
set(handles.X3,'value',0,'visible','off');
set(handles.X4,'value',0,'visible','off');
set(handles.Order,'enable','off','value',1);
set(handles.State_Space,'enable','off');
set(handles.StateVariables,'enable','off');
set(handles.PlotInput,'enable','off');
set(handles.PlotOutput,'enable','off');
axes(handles.Signal);
cla reset;grid on;
axes(handles.SS);
cla reset;grid on;
set(handles.TA,'data',{},'enable','off');
set(handles.TB,'data',{},'enable','off');
set(handles.TC,'data',{},'enable','off');
set(handles.TD,'data',{},'enable','off');
set(handles.T0,'string','','enable','off');
set(handles.TF,'string','','enable','off');

function StateVariables_Callback(hObject, eventdata, handles)
a4=str2double(get(handles.Y4,'string'));
a3=str2double(get(handles.Y3,'string'));
a2=str2double(get(handles.Y2,'string'));
a1=str2double(get(handles.Y1,'string'));
a0=str2double(get(handles.Y0,'string'));
b4=str2double(get(handles.U4,'string'));
b3=str2double(get(handles.U3,'string'));
b2=str2double(get(handles.U2,'string'));
b1=str2double(get(handles.U1,'string'));
b0=str2double(get(handles.U0,'string'));
TFF=get(handles.TF,'string');
TF=str2double(TFF);
if isempty(TFF)
    TF=10;
end
if TF<0
   TF=10;
end 
T00=get(handles.T0,'string');
tet2=str2double(T00);
if (tet2>=TF || tet2<=0)
    T0=0;
else
    T0=tet2;
end
if isempty(T00)
    T0=0;
end
step=get(handles.Step,'value');
impulse=get(handles.Impulse,'value');
TF1=TF; TF=TF-TF/10;
NS=20000;
T=TF/NS;
t=-1:0.1:TF*NS;
u=t>=0;
X1=get(handles.X1,'value');
X2=get(handles.X2,'value');
X3=get(handles.X3,'value');
X4=get(handles.X4,'value');
y=zeros(1,NS);
y1=zeros(1,NS);
x1=zeros(1,NS);
x2=zeros(1,NS);
x3=zeros(1,NS);
x4=zeros(1,NS);
if step==1 && impulse==0
            for k=5:NS
               y(k)=(((a1*y(k-1))/T)+((2*a2*y(k-1))/power(T,2))-((a2*y(k-2))/power(T,2))+((3*a3*y(k-1))/power(T,3))-((3*a3*y(k-2))/power(T,3))+((a3*y(k-3))/power(T,3))+((4*a4*y(k-1))/power(T,4))-((6*a4*y(k-2))/power(T,4))+((4*a4*y(k-3))/power(T,4))-((a4*y(k-4))/power(T,4))+((b4*u(k))/power(T,4))-((4*b4*u(k-1))/power(T,4))+((6*b4*u(k-2))/power(T,4))-((4*b4*u(k-3))/power(T,4))+((b4*u(k-4))/power(T,4))+((b3*u(k))/power(T,3))-((3*b3*u(k-1))/power(T,3))+((3*b3*u(k-2))/power(T,3))-((b3*u(k-3))/power(T,3))+((b2*u(k))/power(T,2))-((2*b2*u(k-1))/power(T,2))+((b2*u(k-2))/power(T,2))+((b1*u(k))/T)-((b1*u(k-1))/T)+(b0*u(k)))/(a0+(a4/power(T,4))+(a3/power(T,3))+(a2/power(T,2))+(a1/T));
            end
 else if step==0 && impulse==1
            for k=5:NS
                y1(k)=(((a1*y1(k-1))/T)+((2*a2*y1(k-1))/power(T,2))-((a2*y1(k-2))/power(T,2))+((3*a3*y1(k-1))/power(T,3))-((3*a3*y1(k-2))/power(T,3))+((a3*y1(k-3))/power(T,3))+((4*a4*y1(k-1))/power(T,4))-((6*a4*y1(k-2))/power(T,4))+((4*a4*y1(k-3))/power(T,4))-((a4*y1(k-4))/power(T,4))+((b4*u(k))/power(T,4))-((4*b4*u(k-1))/power(T,4))+((6*b4*u(k-2))/power(T,4))-((4*b4*u(k-3))/power(T,4))+((b4*u(k-4))/power(T,4))+((b3*u(k))/power(T,3))-((3*b3*u(k-1))/power(T,3))+((3*b3*u(k-2))/power(T,3))-((b3*u(k-3))/power(T,3))+((b2*u(k))/power(T,2))-((2*b2*u(k-1))/power(T,2))+((b2*u(k-2))/power(T,2))+((b1*u(k))/T)-((b1*u(k-1))/T)+(b0*u(k)))/(a0+(a4/power(T,4))+(a3/power(T,3))+(a2/power(T,2))+(a1/T));
                y(k)=(y1(k)-y1(k-1))/T;
            end
     end
end
for i=1:floor(9*T0/TF*NS/10)
    y(i)=0;
end
for k=5:NS
    x1(k)=(y(k)+(x1(k-1))*(4*b4/power(T,4)+3*b3/power(T,3)+2*b2/power(T,2)+b1/T)-(x1(k-2))*(6*b4/power(T,4)+3*b3/power(T,3)+b2/power(T,2))+(x1(k-3))*(4*b4/power(T,4)+b3/power(T,3))-(x1(k-4))*(b4/power(T,4)))/(b4/power(T,4)+b3/power(T,3)+b2/power(T,2)+b1/T+b0);
    x2(k)=(x1(k)-x1(k-1))/T;
    x3(k)=(x2(k)-x2(k-1))/T;
    x4(k)=(x3(k)-x3(k-1))/T;
end
if X1==1 && X2==0 && X3==0 && X4==0
    axes(handles.SS)
    plot(x1)
    grid on
    xlabel('Time (sec)')
    ylabel('State Variable - X1 -')
    xt=get(gca,'XTick');
    set(gca,'XTick',xt,'XTickLabel',xt*TF1/NS)
end
if X1==0 && X2==1 && X3==0 && X4==0
    axes(handles.SS)
    plot(x2)
    grid on
    xlabel('Time (sec)')
    ylabel('State Variable - X2 -')
    xt=get(gca,'XTick');
    set(gca,'XTick',xt,'XTickLabel',xt*TF1/NS)
end
if X1==0 && X2==0 && X3==1 && X4==0
    axes(handles.SS)
    plot(x3)
    grid on
    xlabel('Time (sec)')
    ylabel('State Variable - X3 -')
    xt=get(gca,'XTick');
    set(gca,'XTick',xt,'XTickLabel',xt*TF1/NS)
end
if X1==0 && X2==0 && X3==0 && X4==1
    axes(handles.SS)
    plot(x4)
    grid on
    xlabel('Time (sec)')
    ylabel('State Variable - X4 -')
    xt=get(gca,'XTick');
    set(gca,'XTick',xt,'XTickLabel',xt*TF1/NS)
end    

function X1_Callback(hObject, eventdata, handles)
set(handles.X2,'value',0);
set(handles.X3,'value',0);
set(handles.X4,'value',0);
set(handles.StateVariables,'enable','on');

function X2_Callback(hObject, eventdata, handles)
set(handles.X1,'value',0);
set(handles.X3,'value',0);
set(handles.X4,'value',0);
set(handles.StateVariables,'enable','on');

function X3_Callback(hObject, eventdata, handles)
set(handles.X1,'value',0);
set(handles.X2,'value',0);
set(handles.X4,'value',0);
set(handles.StateVariables,'enable','on');

function X4_Callback(hObject, eventdata, handles)
set(handles.X1,'value',0);
set(handles.X2,'value',0);
set(handles.X3,'value',0);
set(handles.StateVariables,'enable','on');

function T0_Callback(hObject, eventdata, handles)

function T0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function TF_Callback(hObject, eventdata, handles)

function TF_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function uitoggletool5_OffCallback(hObject, eventdata, handles)