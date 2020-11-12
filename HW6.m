%% Elizabeth Howell %%
%% Assignment 5 %%

%% Problem 1 %%

%% Question 1 %% Still needs to complete

ballIm = imread("ball.bmp");
% ballHSV = rgb2hsv(ballIm);
% hChannel = ballHSV(:,:, 1);
% sChannel = ballHSV(:,:, 2);
% vChannel = ballHSV(:,:, 3);
% ballLabel = ~imbinarize(hChannel,.08);
% newIm = zeros(size(hChannel));
% figure
% imshow(ballHSV)
% CC = bwconncomp(ballLabel, 8);
% numPixels = cellfun(@numel,CC.PixelIdxList);
% [biggest,idx] = max(numPixels);
% newIm(CC.PixelIdxList{idx}) = 1;
% newIm =imdilate(newIm, ones(13));
% v1 = cat(3, cat(3, newIm, sChannel), vChannel);
% v2 = cat(3, cat(3, sChannel, newIm), vChannel);
% v3 =cat(3, cat(3, vChannel, sChannel), newIm);
% 
% figure
% subplot(2,2,1)
% imshow(v1)
% subplot(2,2,2)
% imshow(v2)
% subplot(2,2,3)
% imshow(v3)
% subplot(2,2,4)
% imshow(ballHSV)
% pause()

%% question 2 -- done
% newS= zeros(size(vChannel));
% ballLabel = ~imbinarize(vChannel,.4);
% CC = bwconncomp(ballLabel, 8);
% numPixels = cellfun(@numel,CC.PixelIdxList);
% [biggest,idx] = maxk(numPixels,2);
% newS(CC.PixelIdxList{idx(2)}) = 255;
% newG = uint8(double(ballIm(:,:,2)) + newS);
% newB = uint8(double(ballIm(:,:,3)) + newS);
% outImage = cat(3, ballIm(:,:,1), newG,newB);
% figure 
% imshow(outImage);
% pause();

%% Problem 2 %%
elephantIm1 = imread("elephant1.jpg");
elephantOut1 =  CallNormalizedHSVHist(elephantIm1, 4,4,4);
elephantIm2 = imread("elephant2.jpg");
elephantOut2 =  CallNormalizedHSVHist(elephantIm2, 4,4,4);
horseIm1 = imread("horse1.jpg");
horseOut1 =  CallNormalizedHSVHist(horseIm1, 4,4,4);
horseIm2 = imread("horse2.jpg");
horseOut2 =  CallNormalizedHSVHist(horseIm2, 4,4,4);
figure
subplot(2,2,1)
bar((1:64), elephantOut1);
title("Elephant 1");
subplot(2,2,2)
bar((1:64), elephantOut2);
title("Elephant 2");
subplot(2,2,3)
bar((1:64), horseOut1);
title("Horse 1");
subplot(2,2,4)
bar((1:64), horseOut2);
title("Horse 2");
pause();
close all;
clear variables; 