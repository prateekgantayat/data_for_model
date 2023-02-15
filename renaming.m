clc;
close all;
clear all;

for i=100:334
    f1='day';
    f2=strcat(f1,'%04.f');
    file=strcat(f2,'.dat');
    R=dlmread(file);
    f1='/mnt2/prateek/paper_data/day';
    f2=strcat(f1,'%04.f');
    file=strcat(f2,'.dat');
    save(file,'R','-ascii');
    
    f1='sdep';
    f2=strcat(f1,'%04.f');
    file=strcat(f2,'.dat');
    R=dlmread(file);
    f1='/mnt2/prateek/paper_data/sdep';
    f2=strcat(f1,'%04.f');
    file=strcat(f2,'.dat');
    save(file,'R','-ascii');
    
    f1='sden';
    f2=strcat(f1,'%04.f');
    file=strcat(f2,'.dat');
    R=dlmread(file);
    f1='/mnt2/prateek/paper_data/sden';
    f2=strcat(f1,'%04.f');
    file=strcat(f2,'.dat');
    save(file,'R','-ascii');
    
    f1='stress';
    f2=strcat(f1,'%04.f');
    file=strcat(f2,'.dat');
    R=dlmread(file);
    f1='/mnt2/prateek/paper_data/stress';
    f2=strcat(f1,'%04.f');
    file=strcat(f2,'.dat');
    save(file,'R','-ascii');
end