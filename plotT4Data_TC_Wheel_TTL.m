cd('D:\Data\test\T4');
dirListing=dir(cd);
fileName='TC_Wheel_TTL_';
LJSdataFiles={dirListing(cellfun(@(fileN) contains(fileN,fileName), {dirListing.name})).name};
[~, reIndex] = sort( str2double( regexp( LJSdataFiles, '\d+', 'match', 'once' )));
LJSdataFiles = LJSdataFiles(reIndex) ;
labels={'Time','TC','WheelA','WheelB','TTL','TCy','WheelAy','WheelBy','TTLy'};
LJSdata=cell(numel(LJSdataFiles),1);
for fileNum=1:numel(LJSdataFiles)
    LJSdata{fileNum}=readLJStreamData(LJSdataFiles{fileNum},labels);
end
LJSdata=vertcat(LJSdata{:});

TTLData=LJSdata.TTL;

max(bwlabel(TTLData))

timeLine=LJSdata.Time;
figure;hold on
plot(timeLine,TTLData)

figure;hold on
plot(timeLine,LJSdata.WheelA)
plot(timeLine,LJSdata.WheelB)

figure;hold on
plot(timeLine,LJSdata.TC)