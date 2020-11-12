function [hist] =  CallNormalizedHSVHist (im, hBinNum, sBinNum, vBinNum)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    hist = zeros(1,hBinNum * sBinNum * vBinNum);
    hsv = rgb2hsv(im);
    cH = hsv(:,:,1); %% separate into channels
    cS = hsv(:,:,2);
    cV = hsv(:,:,3);
    [w,l] = size(cH);
    val = 0;
    for h = (0:3) % h layer bins
        hi = ((h*.25)<cS & cH<=((h+1)*.25)); % get all pixels that belong in bin h
        hx = h + (h*15); % determine index
        for s = (0:3)
            si = ((s*.25)< cS & cS <=((s+1)*.25));% get all pixels that belong in bin s
            sx = s + (s*3);
            for v = (0:3)
                vi = ((v*.25)<cV & cV<=((v+1)*.25));% get all pixels that belong in bin v
                n = hx + sx + v + 1; % get index
                total = sum((hi & si & vi), 'all'); %% count only where conditions are true for all layers
                val1 = (total/(w*l*3));
                hist(n) = val1;
                val = val + hist(n);
            end 
        end
    end
end

