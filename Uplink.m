
for i=1:5
%%  call the NPUSCH

transmissionblocks=1000;

dope=100*i*i;

[S,T,B]= upIOT(dope,transmissionblocks);


%% plot
figure();
grid on;
plot(S,B,'-*');

 hold on
 xlabel('SNR (dB)');
 ylabel('BLER');
 %clear title;
 title(['Nblock error rate of NPDSCH for dopler frq=' num2str(dope)]);
 legend('nrep1','nrep2');
 hold off;
 
figure();
grid on;
plot(S,T,'-*');

 hold on
 xlabel('SNR (dB)');
 ylabel('BLER');
 %clear title;
 title(['Through put of NPDSCH for dopler frq=' num2str(dope)]);
 legend('nrep1','nrep2');
 hold off;
 
 %% Export data
  fm=['_UP_Freq_',num2str(dope),'.mat'];
  save(fm)
 
end
 
 



