#!/bin/sh
exec scala "$0" "$@"
!#
import scala.sys.process._

object HelloWorld extends App {
println("ls -d -1 $(pwd)/**"!)
}
HelloWorld.main(args)
