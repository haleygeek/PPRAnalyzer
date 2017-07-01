%Later, add a button to check sort order of raw data

function varargout = PPRAnalyzer(varargin)
% PPRANALYZER MATLAB code for PPRAnalyzer.fig
% Last Modified by GUIDE v2.5 18-Jun-2017 21:50:44


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PPRAnalyzer_OpeningFcn, ...
                   'gui_OutputFcn',  @PPRAnalyzer_OutputFcn, ...
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


% --- Executes just before PPRAnalyzer is made visible.
function PPRAnalyzer_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for PPRAnalyzer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = PPRAnalyzer_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% ---------- Group 1 Buttons and Textboxes ---------- %
function Group1Btn_Callback(hObject, eventdata, handles)
[FileName,PathName,FilterIndex] = uigetfile('*.xls','Choose File:');
FullPath = strcat(PathName, FileName);
set(handles.Group1Label,'string',FullPath);
set(handles.OutDirLabel,'string',PathName);
set(handles.OutFileLabel,'string',FileName);
guidata(hObject,handles);

function Group1Edit_Callback(hObject, eventdata, handles)
GroupName = get(handles.Group1Edit,'string');
set(handles.Group1Btn,'string',GroupName);
guidata(hObject,handles);

function Group1Edit_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% ---------- Analysis Button Starts Analysis ---------- %
function AnalyzeBtn_Callback(hObject, eventdata, handles)
Path1 = get(handles.Group1Label, 'string');
GroupNum = 0;

if isempty(Path1) == 0
    PathIn = Path1;
    [num1,txt1,raw1] = xlsread(PathIn);
    Data = raw1;
    Group = get(handles.Group1Btn,'string');
    GroupNum = 'a';
    Analyze;
end


% --- Executes on button press in HelpBtn.
function HelpBtn_Callback(hObject, eventdata, handles)
winopen ('help.docx');


% --- Executes on button press in Template.
function Template_Callback(hObject, eventdata, handles)
winopen ('template.xls');
