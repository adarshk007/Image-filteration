A=imread('baboon256.tif');
w=imnoise(A,'salt & pepper',0.05);

windowneed=input('window size');
%%figure,imshow(A);
figure,imshow(w);
if windowneed==3
    badlo=zeros(size(w)+2);
    
        for x=1:size(w,1)
            for y=1:size(w,2)
                badlo(x+1,y+1)=w(x,y);
            end
        end
    test=zeros(size(A));
       
 for i= 1:size(badlo,1)-2
    for j=1:size(badlo,2)-2
        newcar=zeros(9,1);
        intc=1;
        for x=1:3
            for y=1:3
                newcar(intc)=badlo(i+x-1,j+y-1);
                intc=intc+1;
            end
        end
        %%doing sorting in order to get middle value
        median1=sort(newcar);
        
        test(i,j)=median1(5);
       
    end
end
%%for 5
elseif windowneed==5
    badlo=zeros(size(w)+4);
    for x=1:size(w,1)
        for y=1:size(w,2)
                badlo(x+2,y+2)=w(x,y);
        end
    end
test=zeros(size(A));
       
 for i= 1:size(badlo,1)-4
    for j=1:size(badlo,2)-4
        newcar=zeros(25,1);
        intc=1;
        for x=1:5
            for y=1:5
                newcar(intc)=badlo(i+x-1,j+y-1);
                intc=intc+1;
            end
        end
       %%doing sorting in order to get middle value
        median2=sort(newcar);
        
        test(i,j)=median2(13);
       
    end
end
%%for 7    
elseif windowneed==7
    badlo=zeros(size(w)+6);
    for x=1:size(w,1)
        for y=1:size(w,2)
                badlo(x+3,y+3)=w(x,y);
        end
    end
     test=zeros(size(A));

       
 for i= 1:size(badlo,1)-6
    for j=1:size(badlo,2)-6
        newcar=zeros(49,1);
        intc=1;
        for x=1:7
            for y=1:7
                newcar(intc)=badlo(i+x-1,j+y-1);
                intc=intc+1;
            end
        end
        %%doing sorting in order to get middle value
        median3=sort(newcar);
        test(i,j)=median3(25);
       
    end
end   
end    

test=uint8(test);
figure,imshow(test);
PSNR(im2double(A),im2double(test));