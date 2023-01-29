$ENV:STARSHIP_CONFIG = "$HOME\.starship\starship.toml"
$ENV:STARSHIP_DISTRO = "💜 $env:username "

Invoke-Expression (&starship init powershell)

fnm env --use-on-cd | Out-String | Invoke-Expression

function .. {
    cd ..
}

function .... {
    cd ../../
}

function ...... {
    cd ../../../
}

function work {
    cd "~/dev/work/$args"
}

function may {
    cd "~/dev/may/$args"
}

function martin {
    cd "~/dev/martin/$args"
}

function gb {
    git checkout -b $args
}

function gbt ([string] $taskid) {
    git checkout -b dev/$taskid
}

function gs {
    git checkout $args

    git pull
}

function gmaster {
    gs 'master'
}

function gmain {
    gs 'main'
}

function gdevelop {
    gs 'develop'
}

# Commit all changes
function gco {
    git add .
    
    git commit -m $args
}

# feat: The new feature you are adding to a particular applicatioin
# feat(scope): scoped mesage, scopes definning like: backend, frontend, core, plugin name
function gfeat {
    if ($null -eq $args[1]) {
        gco ":partying_face: feat: $($args[0])"
    } else {
        gco ":partying_face: feat($($args[0])): $($args[1])"
    }
}

# fix: A bug fix
# fix(scope):
function gfix {
    if ($null -eq $args[1]) {
        gco ":bug: fix: $($args[0])"
    } else {
        gco ":bug: fix($($args[0])): $($args[1])"
    }
}

# style: Feature and updates related to styling
# style(scope):
function gstyle {
    if ($null -eq $args[1]) {
        gco ":lipstick: style: $($args[0])"
    } else {
        gco ":lipstick: style($($args[0])): $($args[1])"
    }
}

# refractor: Refractoring a specific section of the codebase
# refractor(scope):
function grefractor {
    if ($null -eq $args[1]) {
        gco ":recycle: refractor: $($args[0])"
    } else {
        gco ":recycle: refractor($($args[0])): $($args[1])"
    }
}

# test: everything test realted
# test(scope):
function gtest {
    if ($null -eq $args[1]) {
        gco ":white_check_mark: test: $($args[0])"
    } else {
        gco ":white_check_mark: test($($args[0])): $($args[1])"
    }
}

# docs: everything to realted to documentation
# docs(scope):
function gdocs {
    if ($null -eq $args[1]) {
        gco ":memo: docs: $($args[0])"
    } else {
        gco ":memo: docs($($args[0])): $($args[1])"
    }
}

# chore: regular code mainenance
# also known as build
# chore(scope):
function gchore {
    if ($null -eq $args[1]) {
        gco ":art: chore: $($args[0])"
    } else {
        gco ":art: chore($($args[0])): $($args[1])"
    }
}

# perf: indentify producation changes related to backward-compatibile performance
# perf(scope):
function gperf {
    if ($null -eq $args[1]) {
        gco ":zap: perf: $($args[0])"
    } else {
        gco ":zap: perf($($args[0])): $($args[1])"
    }
}

# gdepu Upgrade dependencies
# upgrade(scope):
function gdepu {
    if ($null -eq $args[1]) {
        gco ":arrow_up: upgrade: $($args[0])"
    } else {
        gco ":arrow_up: upgrade($($args[0])): $($args[1])"
    }
}

# downgrade dependencies
# downgrade(scope):
function gdepd {
    if ($null -eq $args[1]) {
        gco ":arrow_down: dongrade: $($args[0])"
    } else {
        gco ":arrow_down: downgrade($($args[0])): $($args[1])"
    }
}

# Git pull
function gpu {
    git pull
}
