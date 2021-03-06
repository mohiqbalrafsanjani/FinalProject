function varargout = gui_emmbeding(varargin)
% GUI_EMMBEDING M-file for gui_emmbeding.fig
%      GUI_EMMBEDING, by itself, creates a new GUI_EMMBEDING or raises the existing
%      singleton*.
%
%      H = GUI_EMMBEDING returns the handle to a new GUI_EMMBEDING or the handle to
%      the existing singleton*.
%
%      GUI_EMMBEDING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_EMMBEDING.M with the given input arguments.
%
%      GUI_EMMBEDING('Property','Value',...) creates a new GUI_EMMBEDING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_emmbeding_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_emmbeding_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_emmbeding

% Last Modified by GUIDE v2.5 24-Jul-2019 14:32:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_emmbeding_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_emmbeding_OutputFcn, ...
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


% --- Executes just before gui_emmbeding is made visible.
function gui_emmbeding_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_emmbeding (see VARARGIN)

% Choose default command line output for gui_emmbeding
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_emmbeding wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_emmbeding_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input_plainteks_Callback(hObject, eventdata, handles)
% hObject    handle to input_plainteks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_plainteks as text
%        str2double(get(hObject,'String')) returns contents of input_plainteks as a double


% --- Executes during object creation, after setting all properties.
function input_plainteks_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_plainteks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tombol_random_key.
function tombol_random_key_Callback(hObject, eventdata, handles)
% hObject    handle to tombol_random_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plainteks=get(handles.input_plainteks,'string');
length_p=length(plainteks);
% Upper case, lower case, numbers, and special characters
% !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
%testkey = 'LZEWQJELMDPFKPGHQGVZSIPCXWVGPALIEE';
str_rand = char(65 + floor(26 .* rand(length_p,1)))';
set(handles.tampil_random_key,'string',str_rand);



function tampil_random_key_Callback(hObject, eventdata, handles)
% hObject    handle to tampil_random_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tampil_random_key as text
%        str2double(get(hObject,'String')) returns contents of tampil_random_key as a double


% --- Executes during object creation, after setting all properties.
function tampil_random_key_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tampil_random_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_enkripsi_Callback(hObject, eventdata, handles)
% hObject    handle to hasil_enkripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil_enkripsi as text
%        str2double(get(hObject,'String')) returns contents of hasil_enkripsi as a double


% --- Executes during object creation, after setting all properties.
function hasil_enkripsi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil_enkripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tombol_enkripsi.
function tombol_enkripsi_Callback(hObject, eventdata, handles)
% hObject    handle to tombol_enkripsi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plainteks=get(handles.input_plainteks,'string');
key=get(handles.tampil_random_key,'string');
length_p=length(plainteks);
bin_p=dec2bin(plainteks, 8);
bin_k=dec2bin(key, 8);
xor_c=char((bin_p~=bin_k)+'0');
str_c=bin2dec(xor_c);
%disp(str_c);
char_c=char(str_c);
re_c=reshape(char_c,[1,length_p]);
fid = fopen('key.txt','w');
for i=1:length_p
    fprintf(fid,'%c',key(i)); 
end
fclose(fid);
%disp(plainteks);
%disp(key);
%disp(re_c);
%disp(['Tampil Ascii Plainteks']);
%disp(uint8(plainteks));
%disp(['Tampil Ascii Key']);
%disp(uint8(key));
%disp(['Tampil Biner Plainteks']);
%disp(bin_p);
%disp(['Tampil Biner key']);
%disp(bin_k);
%disp(['Tampil Biner Ciperteks']);
%disp(xor_c);
%disp(['Tampil Ascii Ciperteks']);
%disp(str_c);

set(handles.tampil_cipherteks,'string',re_c);


% --- Executes on button press in tombol_input_image.
function tombol_input_image_Callback(hObject, eventdata, handles)
% hObject    handle to tombol_input_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uigetfile({'*.png'}, 'File Selector');
gambar_dis = fullfile(pathname, filename);
gambar = imread(gambar_dis);
set(handles.axes,'Units','pixels');

axes(handles.axes);
gambar = imresize(gambar,[512 512]);
if size(gambar,3)==3
   gambar=rgb2gray(gambar);
end

imshow(gambar);
set(handles.axes,'Units','normalized');


% --- Executes on button press in penyisipan_text_to_image.
function penyisipan_text_to_image_Callback(hObject, eventdata, handles)
% hObject    handle to penyisipan_text_to_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%==============================================================


% Clear the existing workspace 
%clear all; 

  
% Clear the command window 
%clc; 

  
% Read the input image 

input = getimage(handles.axes); 

  
% Convert image to greyscale 
%input=rgb2gray(input); 

  
% Resize the image to required size 
input=imresize(input, [512 512]); 

  
% Message to be embedded 

message = get(handles.tampil_cipherteks,'string');

  
% Length of the message where each character is 8 bits 
len = length(message) * 8; 

  
% Get all the ASCII values of the characters of the message 
ascii_value = uint8(message); 

  
% Convert the decimal values to binary 
bin_message = transpose(dec2bin(ascii_value, 8)); 

  
% Get all the binary digits in separate row 
bin_message = bin_message(:); 

  
% Length of the binary message 
N = length(bin_message); 

  
% Converting the char array to numeric array 
bin_num_message=str2num(bin_message); 
%disp(bin_num_message);
  
% Initialize output as input 
output = input; 

  
% Get height and width for traversing through the image 
height = size(input, 1); 
width = size(input, 2); 

  
% Counter for number of embedded bits 
embed_counter = 1; 

  
% Traverse through the image 

for i = 1 : height 

    for j = 1 : width 

          

        % If there are more bits remaining to embed 

        if(embed_counter <= len) 

              

            % Finding Least Significant Bit of the current pixel 

            LSB = mod(double(input(i, j)), 2); 

              

            % Find whether the bit is same or needs to change 

            temp = double(xor(LSB, bin_num_message(embed_counter))); 

              

            % Updating the output to input + temp 

            output(i, j) = input(i, j)-temp;
            
            testx (j, i) = input(i, j);
            testy (j, i) = output(i, j);
            %disp(input(i,j));
            %disp(dec2bin(input(i,j)));
              

            % Increment the embed counter 

            embed_counter = embed_counter+1; 

        end

          

    end
end

  
% Write both the input and output images to local storage 
% Mention the path to a folder here. 
%LSBcoba = mod(double(input(1, 1)), 2); 
%tempcoba = double(xor(LSBcoba, bin_num_message(1))); 
%disp(tempcoba);
%disp(input(1, 1)+tempcoba);

%disp(dec2bin(output(1,1)));
%disp(dec2bin(input(1,1)));
imwrite(input, 'originalImage.png'); 

imwrite(output, 'stegoImage.png');

img1 = double(input);
img2 = double(output);

[m n] = size(img1);

er=img1-img2;
MSE=sum(sum(er.^2))/(m*n);
PSNR= 10*log10(255^2/MSE);

%fprintf('MSE = %f\n',MSE);
%fprintf('PSNR = %f\n',PSNR);
set(handles.mse,'string',MSE);
set(handles.psnr,'string',PSNR);

%filename_input = 'input_img.xlsx'; 
%xlswrite(filename_input, input);

%filename_testx = 'testx_img.xlsx'; 
%xlswrite(filename_testx, testx);

%filename_testy = 'testy_img.xlsx'; 
%xlswrite(filename_testy, testy);

%filename_output = 'output_img.xlsx'; 
%xlswrite(filename_output, output);

gambar = imread('stegoImage.png');
set(handles.axes3,'Units','pixels');

axes(handles.axes3);
gambar = imresize(gambar,[512 512]);
if size(gambar,3)==3
   gambar=rgb2gray(gambar);
end

imshow(gambar);
set(handles.axes3,'Units','normalized');
