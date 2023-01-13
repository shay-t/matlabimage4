%image binaire
I=imread("circles.png");
%J=im2bw(I);pour binariser l'image
imshow(I);
%element structurant par strel
SE1=strel('square',13);
SE2=strel('disk',15);
SE3=strel('line',10,45);
SE4=strel('rectangle',[5 15]);
%dilatation
a=imdilate(I,SE1);
b=imdilate(I,SE2);
c=imdilate(I,SE3);
d=imdilate(I,SE4);
figure(1);
subplot(2,2,1);imshow(a);title("carre 13");
subplot(2,2,2);imshow(b);title("carre 13");
subplot(2,2,3);imshow(c);title("carre 13");
subplot(2,2,4);imshow(d);title("carre 13");
%erosion
figure(2);
a2=imerode(I,SE1);
b2=imerode(I,SE2);
c2=imerode(I,SE3);
d2=imerode(I,SE4);
subplot(2,2,1);imshow(a2);
subplot(2,2,2);imshow(b2);
subplot(2,2,3);imshow(c2);
subplot(2,2,4);imshow(d2);
%ouverture
figure(3);
a3=imopen(I,SE1);
b3=imopen(I,SE2);
c3=imopen(I,SE3);
d3=imopen(I,SE4);
subplot(2,2,1);imshow(a3);
subplot(2,2,2);imshow(b3);
subplot(2,2,3);imshow(c3);
subplot(2,2,4);imshow(d3);
%fermeture
figure(4);
a4=imclose(I,SE1);
b4=imclose(I,SE2);
c4=imclose(I,SE3);
d4=imclose(I,SE4);
subplot(2,2,1);imshow(a4);
subplot(2,2,2);imshow(b4);
subplot(2,2,3);imshow(c4);
subplot(2,2,4);imshow(d4);