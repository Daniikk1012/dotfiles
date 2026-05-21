export ANDROID_SDK_ROOT=$HOME/Coding/android/sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT
export JAVA_HOME=/usr/lib/jvm/default-java
export PATH=$HOME/.dotnet/tools:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export VISUAL=vim
export EDITOR=vim
export MOZ_USE_XINPUT2=1

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
