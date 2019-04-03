if ( $shell != /usr/bin/tcsh && $shell != /bin/tcsh ) then
#    echo not a tcsh shell so sourcing /etc/.cshrc
    source /etc/.cshrc
endif 

unset autologout
umask 002 

if ( $?prompt ) then
        set autolist
        set savehist=500
        set history=500
        set ignoreeof
endif 

# Environment variables are set here
setenv DISPLAY $REMOTEHOST\:0.0

setenv LIBPATH /usr/local/lib

# If you need to alter the path
# add system stuff
set path=( /usr/sbin /sbin /usr/local/sbin /etc $path)

# This is to source project .cshrc info
if ( -f /devel/etc/my.cshrc ) then
    source /devel/etc/my.cshrc
endif

setenv JAVA_HOME /usr/java8
cd /sandbox/user
