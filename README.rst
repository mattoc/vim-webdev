========
INSTALL
========

In a term window:

::

  $ cd
  $ git clone git://github.com/mattoc/vim-webdev.git vimsetup
  $ mv .vim .old-vim
  $ mv .vimrc .old-vimrc
  $ mv vim-webdev .vim
  $ ln -s .vim/.vimrc .vimrc


Now load the submodules (like tpope's pathogen) from GitHub:

::

  $ cd ~/.vim
  $ git submodule update --init


Options
-------

I've added some nice dark background, brighter foreground colorschemes: 
 - **mustang.vim** by *~hcalves*; http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484 (small mod to change search highlighting)
 - **jellybeans.vim** by *NanoTech*; https://github.com/nanotech/jellybeans.vim
 - **strange.vim** by *strange*; https://github.com/strange/strange.vim is great for low-contrast editing also
