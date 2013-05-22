function timers=timsim()
	numclks=6048*192*3;
	timers=zeros(numclks,3);
	timers(:,1)=repmat([1:6048]',192*3,1);
	pwmout_one=zeros(numclks,1);
	pwmout_one(find(timers(:,1)<5921))=1;
	timers(:,2)=mod(cumsum(pwmout_one),5952);
	pwmout_two=zeros(numclks,1);
	pwmout_two(find(timers(:,1)<5984))=1;
	timers(:,3)=mod(cumsum(pwmout_two),6048);
endfunction
