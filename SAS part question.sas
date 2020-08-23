data perfect(drop=j add);
i=1;
do while(i<30);
	j=1;
	add=0;
	do while(j<=(i-1));
		if mod(i,j)=0 then do;
			add=add+j;
			j=j+1;
			end;
		else do;
			add=add;
			j=j+1;
			end;
		end;
	if add=i then do;
		check_perfect='TRUE';
		output;
		end;
	else do;
		check_perfect='FALSE';
		output;
		end;
i=i+1;
end;
run;


%macro checkperfect(N);
data perfect(drop=j add N);             /* delete uesless column */
i=1;
do while(i<&N);                        /* check every number less than N */
	j=1;
	add=0;
	do while(j<=(i-1));               /* use each number less N as dividend */
		if mod(i,j)=0 then do;        /* use mod function to check if reminder is qual to zero */
			add=add+j;
			j=j+1;
			end;
		else do;
			add=add;
			j=j+1;
			end;
		end;
	if add=i then do;
		check_perfect='True  ';    /* if we accumulate all divisors that are qual to checked number, then it is perfect number*/ 
		output;
		end;
	else do;
		check_perfect='False   ';
		output;
		end;
i=i+1;
end;
run;
%mend;

%checkperfect(100);
