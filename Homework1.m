clear all
a = imread('hw1_truecolor.jpg');
%a = imread('hw1_grayscale.jpg');
c= size(a);
[o,p,x]=size(a);

if x==3
    for i = 1:1:c(1)
    for j = 1:1:c(2)
    for k = 1:1:c(3)
    b(c(1)+1-i,j,k)=a(i,j,k);
    end
    end
    end
    figure()
    imshow(a)
    title('original')
    figure
    imshow(b)
    title('vertical flip')

    for i = 1:1:c(1)
    for j = 1:1:c(2)
    for k = 1:1:c(3)
    q(i,c(2)+1-j,k)=a(i,j,k);
    end
    end
    end
    figure
    imshow(q)
    title('horizontal flip')

    for i = 1:1:c(1)
    for j = 1:1:c(2)
    for k = 1:1:c(3)
    y(c(2)+1-j,i,k)=a(i,j,k);
    end
    end
    end
    figure
    imshow(y)
    title('rotate left')

    for i = 1:1:c(1)
    for j = 1:1:c(2)
    for k = 1:1:c(3)
    z(j,c(1)+1-i,k) = a(i,j,k);
    end
    end
    end
    figure
    imshow(z)
    title('rotate right')

    for i = 1:1:c(1)/2
    for j =1:1:c(2)/2
    for k = 1:1:c(3)    
        r(i,j,k)=a(2*i,2*j,k);
    end
    end
    end
    figure
    imshow(r)
    title('Resized image');
else

    for i = 1:1:c(1)
    for j = 1:1:c(2)
    b(c(1)+1-i,j)=a(i,j);
    end
    end
    figure()
    imshow(a)
    title('original')
    figure
    imshow(b)
    title('vertical flip')

    for i = 1:1:c(1)
    for j = 1:1:c(2)

    q(i,c(2)+1-j)=a(i,j);

    end
    end
    figure
    imshow(q)
    title('horizontal flip')

    for i = 1:1:c(1)
    for j = 1:1:c(2)
    y(c(2)+1-j,i)=a(i,j);
    end
    end
    figure
    imshow(y)
    title('rotate left')

    for i = 1:1:c(1)
    for j = 1:1:c(2)
    z(j,c(1)+1-i) = a(i,j);
    end
    end
    figure
    imshow(z)
    title('rotate right')

    for i = 1:1:c(1)/2
    for j =1:1:c(2)/2
        r(i,j)=a(2*i,2*j);
    end
    end
    figure
    imshow(r)
    title('Resized image');


end












