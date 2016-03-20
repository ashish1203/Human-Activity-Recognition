[training]=xlsread('aa.xls'); 
[sample]=xlsread('aa.xls'); 
traininglabel = ones(20,1); 
traininglabel(1:(fix(20/2))) = 0; 
testlabel=ones(20,1);
testlabel(1:(fix(20/2))) = 0; 
%%%%%%%%%%%%%%%%%%%%%%% SVM classify

cp= classperf(traininglabel); 
SVMstruct = svmtrain(training,traininglabel); 
newclass= svmclassify(SVMstruct,sample);
% cp=classperf(testlabel,newclass);
% get(cp)
disp(newclass)

%%%%%%%%%%%%%%%%%%%%%%%%% DISCRIMINANT classify
%  class = classify(sample,training,traininglabel,'mahalanobis ');
% % cp = classperf(traininglabel,class);
% % cp.CorrectRate 
% disp(class)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%knn classify
 class = knnclassify(sample, training, traininglabel, 5);
% cp = classperf(traininglabel,class);
% cp.CorrectRate 
 disp(class)
