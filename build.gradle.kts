plugins {
    alias(libs.plugins.kotlin.jvm)
    alias(libs.plugins.kotlin.qa)
    alias(libs.plugins.kotlin.sv)
}

allprojects {
    group = "io.github.positionpal"

    repositories {
        mavenCentral()
    }
}

subprojects {
    dependencies {
        testImplementation(libs.bundles.kotlin.testing)
    }

    tasks.test {
        useJUnitPlatform()
    }
}
