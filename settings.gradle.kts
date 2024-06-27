rootProject.name = "Kotlin Template for Jvm"
include(
    "core",
)

plugins {
    id("org.danilopianini.gradle-pre-commit-git-hooks") version "2.0.7"
}

gitHooks {
    commitMsg { conventionalCommits() }
    preCommit {
        tasks("check")
    }
    createHooks(overwriteExisting = true)
}
