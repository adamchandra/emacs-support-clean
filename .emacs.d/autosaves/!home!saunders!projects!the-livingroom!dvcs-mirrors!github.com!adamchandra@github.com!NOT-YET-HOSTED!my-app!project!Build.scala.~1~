import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {
  
  val appName         = "$application_name$"
  val appVersion      = "0.1-SNAPSHOT"
  
  val appDependencies = Seq(
    // Add your project dependencies here,
    "org.scalaz" %% "scalaz-core" % "7.0.0-M7" withSources(),
    "org.specs2" %% "specs2" % "latest.release" % "test"
  )

  val main = PlayProject(appName, appVersion, appDependencies, mainLang = SCALA).settings(
    // Add your own project settings here
  )
}
