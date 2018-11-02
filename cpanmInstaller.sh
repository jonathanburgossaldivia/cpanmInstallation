cpanm='https://cpanmin.us';
text='[ $SHLVL -eq 1 ] && eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"' ;
wget -qO cpanm.pl "$cpanm" ||  curl -o cpanm.pl "$cpanm";
perl cpanm.pl -l$HOME/perl5 App::cpanminus local::lib ;

if [ -f .bashrc ]; then 
	echo -e "\n$text" >>~/.bashrc;
    source ~/.bashrc ;
    else 
    	echo -e "\n$text" >>~/.profile;
    	source ~/.profile;
fi;
echo "END"
