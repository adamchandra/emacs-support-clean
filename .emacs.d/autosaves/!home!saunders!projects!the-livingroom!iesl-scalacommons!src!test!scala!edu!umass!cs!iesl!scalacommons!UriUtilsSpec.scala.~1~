package edu.umass.cs.iesl.scalacommons
package util

import org.specs2.mutable

import StringOps._
import FileOps._



object StringUtilsSpec extends mutable.Specification {

  "border stripping" should {
    "correctly remove these borders" in {
      val strs = """
      | xx |
      """
      val borderless = stripBorder(strs)
      borderless must_== " xx "
    }
  }

}
