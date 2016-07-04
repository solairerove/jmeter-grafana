#!/bin/bash

$JMETER_HOME/bin/jmeter.sh -n -t src/test/jmeter/tut-by-test.jmx -l target/jmeter/report.jtl
