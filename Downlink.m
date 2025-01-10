
for i=1:5
%%  call the NPDSCH
 
transmissionblocks=200;

dope=3000;

[S,T,B]= downIOT(dope,transmissionblocks);


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
  fm=['ZEM_Freq_',num2str(dope),'.mat'];
  save(fm)
 
end
 
 



