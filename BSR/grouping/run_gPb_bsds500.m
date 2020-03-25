addpath lib;

clear all;close all;clc;

%% compute gPb at each image in database BSDS500
% str010={'test','train','val'};
% 
% tic;
% for j=1:numel(str010)
% imgDir = ['../BSDS500/data/images/' str010{j}];
% outGPbImgDir = ['../BSDS500/gPb/img/' str010{j}];
% outGPbDataDir = ['../BSDS500/gPb/data/' str010{j}];
% mkdir(outGPbImgDir);
% mkdir(outGPbDataDir);
% imgFileList= dir(fullfile(imgDir,'*.jpg'));
% 
% for i =1:numel(imgFileList),
%     outGPbImgFile = fullfile(outGPbImgDir,[imgFileList(i).name(1:end-4) '_gPb' '.png']);
%     if exist(outGPbImgFile,'file'), continue; end
%     outGPbDataFile = fullfile(outGPbDataDir,[imgFileList(i).name(1:end-4) '_gPb' '.mat']);
%     if exist(outGPbDataFile,'file'), continue; end
%     imgFile=fullfile(imgDir,imgFileList(i).name);
%     % im2ucm(imgFile, outFile);
%     gPb_orient = globalPb(imgFile);
%     gPb_final = max(gPb_orient,[],3);
%     figure('Visible','off'); imshow(gPb_final,'border','tight'); colormap(jet);
%     axis(gca,'image');
%     saveas(gca,outGPbImgFile);
% %     imwrite(figure1,outGPbImgFile);
% save(outGPbDataFile,'gPb_final'); 
% end
% end % end str010
% toc;



%% compute gPb at each image in database MSRA1K
% 
% imgDir = ['../MSRA1K/original images'];
% outGPbImgDir = ['../MSRA1K/gPb/img'];
% outGPbDataDir = ['../MSRA1K/gPb/data'];
% mkdir(outGPbImgDir);
% mkdir(outGPbDataDir);
% imgFileList= dir(fullfile(imgDir,'*.jpg'));
% 
% tic;
% for i =1:numel(imgFileList),
%     outGPbImgFile = fullfile(outGPbImgDir,[imgFileList(i).name(1:end-4) '_gPb' '.png']);
%     if exist(outGPbImgFile,'file'), continue; end
%     outGPbDataFile = fullfile(outGPbDataDir,[imgFileList(i).name(1:end-4) '_gPb' '.mat']);
%     if exist(outGPbDataFile,'file'), continue; end
%     imgFile=fullfile(imgDir,imgFileList(i).name);
%     % im2ucm(imgFile, outFile);
%     gPb_orient = globalPb(imgFile);
%     gPb_final = max(gPb_orient,[],3);
%     figure('Visible','off'); imshow(gPb_final,'border','tight'); colormap(jet);
%     axis(gca,'image');
%     saveas(gca,outGPbImgFile);
% %     imwrite(figure1,outGPbImgFile);
% save(outGPbDataFile,'gPb_final'); 
% end
% toc;


%% compute gPb at each image in temp data

imgDir = ['../tempData/original images'];
outGPbImgDir = ['../tempData/gPb/img'];
outGPbDataDir = ['../tempData/gPb/data'];
mkdir(outGPbImgDir);
mkdir(outGPbDataDir);
imgFileList= dir(fullfile(imgDir,'*.jpg'));

tic;
for i =1:numel(imgFileList),
    outGPbImgFile = fullfile(outGPbImgDir,[imgFileList(i).name(1:end-4) '_gPb' '.png']);
    if exist(outGPbImgFile,'file'), continue; end
    outGPbDataFile = fullfile(outGPbDataDir,[imgFileList(i).name(1:end-4) '_gPb' '.mat']);
    if exist(outGPbDataFile,'file'), continue; end
    imgFile=fullfile(imgDir,imgFileList(i).name);
    % im2ucm(imgFile, outFile);
    gPb_orient = globalPb(imgFile);
    gPb_final = max(gPb_orient,[],3);
    figure('Visible','off'); imshow(gPb_final,'border','tight'); colormap(jet);
    axis(gca,'image');
    saveas(gca,outGPbImgFile);
%     imwrite(figure1,outGPbImgFile);
save(outGPbDataFile,'gPb_final'); 
end
toc;


