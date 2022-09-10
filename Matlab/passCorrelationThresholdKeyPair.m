function rt = passCorrelationThresholdKeyPair (myData,funHandler,threshold,magicNum)
    for i = 1:size(myData,1)
        for j = 1:size(myData,1)
            if(i~=j)
                [m,n]=meshgrid(myData(i,:),myData(j,:));
                if(funHandler(m<=n)>=threshold)
                    rt = {rt , [m+500*magicNum,n+500*magicNum]};
                end 
            end
        end
    end
end