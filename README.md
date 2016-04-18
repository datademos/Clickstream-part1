# Clickstream Data Demo

In this demo, we will use InfluxDB, Kapacitor, and Chronograph to put together a Clickstream infrastructure. The first part of this demo will just do simple CRUD operations in InfluxDB based on actions taken by a user on a webpage, or using a workload generator.

# What you need
Install rails version(Rails 4.2.6) and ruby version(ruby 2.3.0p0). You can refer to this guide for installing rails.
	http://railsapps.github.io/installrubyonrails-mac.html

InfluxDB v(0.12 or higher)	
https://docs.influxdata.com/influxdb/v0.12/introduction/installation/

Locust.io for the workload generator
