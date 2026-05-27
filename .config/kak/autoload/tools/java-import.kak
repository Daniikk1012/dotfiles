define-command \
    -docstring 'update import database' \
    -params 0 \
    java-update-imports %{
        nop %sh{
            mkdir -p .kak
            ./gradlew -q printClasspath | sort | uniq | sed 's/^/import /' | sed 's/$/;/' > .kak/imports
        }
        echo done
    }

define-command -docstring 'automatic imports' -params ..1 java-import %{
    evaluate-commands %sh{
        printf 'execute-keys -draft "O'
        for classname in ${1:-${kak_selection}}
        do
            grep -m1 "\\.$classname;" .kak/imports
        done
        echo '<backspace><esc>"'
    }
    execute-keys d
}

define-command -docstring 'remove unused imports' -params 0 java-clean-imports %{
    execute-keys -draft '%|clean-imports<ret>'
}
