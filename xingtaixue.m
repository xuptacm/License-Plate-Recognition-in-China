function picture_6 = xingtaixue(picture_1)
threshold = 50;
picture_2 = im2bw(picture_1,graythresh(picture_1)); %�����䷽� ͼ���ֵ��
figure('NumberTitle','off','Name','���ƶ�ֵ��'),imshow(picture_2);title('��ֵ��');
picture_3 = bwmorph(picture_2,'hbreak',inf); %�Զ�ֵͼ�����̬ѧ���� �Ƴ�H��ͨ������
picture_4 = bwmorph(picture_3,'spur',inf);
picture_5 = bwmorph(picture_4,'open',inf);
picture_6 = bwareaopen(picture_5,threshold);
picture_6 = ~picture_6;
figure('NumberTitle','off','Name','��̬ѧ����'),imshow(picture_6);title('��̬ѧ����'); 