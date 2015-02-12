profile:
	cp -r .profile ~/.profile


pathogen:
	mkdir -p ~/.vim/autoload
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

vim-plugins: pathogen
	mkdir -p ~/.vim/bundle
	git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
	git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
	git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
	git clone git://github.com/digitaltoad/vim-jade.git ~/.vim/bundle/vim-jade
	git clone https://github.com/groenewege/vim-less ~/.vim/bundle/vim-less

vim: pathogen vim-plugins
	cp -r .vim/colors ~/.vim/colors
	cp -r .vimrc ~/.vimrc

all: profile vim
