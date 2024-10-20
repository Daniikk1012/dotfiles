ANDROID_SDK_ROOT=$HOME/Coding/android/sdk
ANDROID_HOME=$ANDROID_SDK_ROOT
JAVA_HOME=/usr/lib/jvm/openjdk-17
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/.dotnet/tools:$PATH
PATH=$HOME/.cargo/bin:$PATH
VISUAL=vim
EDITOR=vim

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
