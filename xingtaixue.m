function picture_6 = xingtaixue(picture_1)
threshold = 50;
picture_2 = im2bw(picture_1,graythresh(picture_1)); %最大类间方差法 图像二值化
figure('NumberTitle','off','Name','车牌二值化'),imshow(picture_2);title('二值化');
picture_3 = bwmorph(picture_2,'hbreak',inf); %对二值图像的形态学操作 移除H连通的像素
picture_4 = bwmorph(picture_3,'spur',inf);
picture_5 = bwmorph(picture_4,'open',inf);
picture_6 = bwareaopen(picture_5,threshold);
picture_6 = ~picture_6;
figure('NumberTitle','off','Name','形态学操作'),imshow(picture_6);title('形态学操作'); 