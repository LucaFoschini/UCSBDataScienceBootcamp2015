*Instructor:* Luca Foschini (email: foschini@cs.ucsb.edu) (twitter: @calimagna)

*Format:* lecture an demo from instructor

# Goals

  - Learn about what makes your code running slow
  - Do you really have big data? 
  - Learn about tools from the big-data ecosystem

## Memory, cores, I/O

  - [Latency](https://gist.github.com/jboner/2841832): Register, Cache, RAM, Disk (SSD/HDD), network
  - Why is my code running slow? (profile! top/htop)
  - Out of core vs distributed
  - Embarrassingly parallel problems (shell/python parallel)

## How to deal with big data?

  - be smart: (sampling/approximation algorithms, divide-and-conquer)
  - be rich: [rent-a-cloud](https://aws.amazon.com/ec2/pricing/). [Digital Ocean](https://www.digitalocean.com/)
 
## Demo
  - ElasticSearch ("google your data")
  - Apache Spark  (RDDs, SQL, mlib, deploy on EC2)
  - Python-R integration.
