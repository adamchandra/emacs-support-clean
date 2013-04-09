import sbt._
import Keys._
import PlayProject._

object ApplicationBuild extends Build {

    val appName         = "securesocial"
    val appVersion      = "master"

    val appDependencies = Seq(
      // "com.typesafe" %% "play-plugins-util" % "2.0.3",
      // "com.typesafe" %% "play-plugins-mailer" % "2.0.4",
      "org.apache.commons" % "commons-email" % "1.2",
      // "com.typesafe" %% "play-plugins-util" % "2.0.3-08072012"
      "org.mindrot" % "jbcrypt" % "0.3m"
    )


    val main = PlayProject(appName, appVersion, appDependencies, mainLang = SCALA).settings(
    ).settings(
      resolvers ++= Seq(
        "jBCrypt Repository" at "http://repo1.maven.org/maven2/org/",
        "Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/"
      )
    )

}
