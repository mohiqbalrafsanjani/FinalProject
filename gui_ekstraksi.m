function varargout = gui_ekstraksi(varargin)
% GUI_EKSTRAKSI M-file for gui_ekstraksi.fig
%      GUI_EKSTRAKSI, by itself, creates a new GUI_EKSTRAKSI or raises the existing
%      singleton*.
%
%      H = GUI_EKSTRAKSI returns the handle to a new GUI_EKSTRAKSI or the handle to
%      the existing singleton*.
%
%      GUI_EKSTRAKSI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_EKSTRAKSI.M with the given input arguments.
%
%      GUI_EKSTRAKSI('Property','Value',...) creates a new GUI_EKSTRAKSI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_ekstraksi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_ekstraksi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_ekstraksi

% Last Modified by GUIDE v2.5 24-Jul-2019 16:31:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_ekstraksi_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_ekstraksi_OutputFcn, ...
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


% --- Executes just before gui_ekstraksi is made visible.
function gui_ekstraksi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_ekstraksi (see VARARGIN)

% Choose default command line output for gui_ekstraksi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_ekstraksi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_ekstraksi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in input_gambar_stego.
function input_gambar_stego_Callback(hObject, eventdata, handles)
% hObject    handle to input_gambar_stego (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uigetfile({'*.png'}, 'File Selector');
gambar_dis = fullfile(pathname, filename);
gambar_stego = imread(gambar_dis);
%filename = 'stego_img.xlsx'; 
%xlswrite(filename, gambar_stego);

set(handles.axes1,'Units','pixels');

axes(handles.axes1);
gambar_stego = imresize(gambar_stego,[512 512]);
if size(gambar_stego,3)==3
   gambar_stego=rgb2gray(gambar_stego);
end
imshow(gambar_stego);
set(handles.axes1,'Units','normalized');

% --- Executes on button press in input_file_key.
function input_file_key_Callback(hObject, eventdata, handles)
% hObject    handle to input_file_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uigetfile({'*.txt'}, 'File Selector');
file_k = fullfile(pathname, filename);
f_key = fopen(file_k, 'r');
data_k = fscanf(f_key, '%s');
fclose(f_key);

set(handles.tampil_key,'string',data_k);


% --- Executes on button press in mulai_proses_ekstraksi_dekripsi.
function mulai_proses_ekstraksi_dekripsi_Callback(hObject, eventdata, handles)
% hObject    handle to mulai_proses_ekstraksi_dekripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%========================================================


% Clear the existing workspace 
%clear all; 

  
% Clear the command window 
%clc; 

  
% Getting the input image   

%filename = 'output_img.xlsx'; 
%input_image = xlsread(filename); 
input_image = getimage(handles.axes1);
  
% Get height and width for traversing through the image 
height = size(input_image, 1); 
width = size(input_image, 2); 

% Message to be extract 

message = get(handles.tampil_key,'string'); 


% Number of characters of the hidden text 
chars = length(message); 

  
% Number of bits in the message 
message_length = chars * 8; 

  
% counter to keep track of number of bits extracted 
counter = 1; 

  
% Traverse through the image 

for i = 1 : height 

    for j = 1 : width 

          

        % If more bits remain to be extracted 

        if (counter <= message_length) 

              

            % Store the LSB of the pixel in extracted_bits 

            extracted_bits(counter, 1) = mod(double(input_image(i, j)), 2); 

              

            % Increment the counter 

            counter = counter + 1; 

        end

    end
end

  
% Powers of 2 to get the ASCII value from binary 
binValues = [ 128 64 32 16 8 4 2 1 ]; 

  
% Get all the bits in 8 columned table 
% Each row is the bits of the character  
% in the hidden text 
binMatrix = reshape(extracted_bits, 8, (message_length/8)); 

  
% Convert the extracted bits to characters 
% by multiplying with powers of 2 
textString = char(binValues*binMatrix);  

  
% Print the hidden text 


set(handles.hasil_ekstraksi_stego,'string',textString);

cipherteks = textString;
key= message;
length_c=length(cipherteks);
bin_c=dec2bin(cipherteks,8);
bin_k=dec2bin(key,8); 
xor_p=char((bin_c~=bin_k)+'0');
str_p=bin2dec(xor_p);
char_p=char(str_p);
re_p=reshape(char_p,[1,length_c]);

set(handles.hasil_dekripsi_cipherteks,'string',re_p);
