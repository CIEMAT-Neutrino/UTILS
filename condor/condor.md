# CERN Condor Utilities Documentation

## Introduction

This document provides a guide to the utilities associated with CERN Condor, a high-throughput computing system. These utilities help manage job submission, monitoring, and troubleshooting on the grid.

## Table of Contents

1. [Installation](#installation)
2. [Submission Scripts](#submission-scripts)
3. [Monitoring Jobs](#monitoring-jobs)
4. [Job Management](#job-management)
5. [Troubleshooting](#troubleshooting)
6. [Additional Resources](#additional-resources)

## Installation

Before using CERN Condor utilities, ensure that Condor is properly installed on your system. You can follow the official [Condor installation guide](https://abpcomputing.web.cern.ch/guides/htcondor/) for detailed instructions.

## Submission Scripts

### 1. Basic Job Submission

To submit a basic job to the grid, create a submission script (e.g., `submit-job.submit`) with the following content:

```condor
executable = /path/to/your/executable
arguments = arg1 arg2
output = job.out
error = job.err
log = job.log
queue
```

Submit the job using the following command:

```bash
condor_submit submit-job.submit
```

### 2. Advanced Job Submission

For more complex job requirements, you can customize your submission script. Refer to the Condor User Manual for detailed options.

## Monitoring Jobs

### 1. Check Job Status

To check the status of your submitted jobs, use the following command:

```bash
condor_q
```

### 2. Check Job Output

Retrieve job output files using the condor_transfer_data command:

```bash
condor_transfer_data -name <schedd_name> -id <cluster_id>.<proc_id>
```

## Job Management

### 1. Remove Jobs

To remove a job from the queue, use the following command:

```bash
condor_rm <cluster_id>
```

### 2. Hold Jobs

To hold a job, use the following command:

```bash
condor_hold <cluster_id>
```

### 3. Release Jobs

To release a held job, use the following command:

```bash
condor_release <cluster_id>
```

## Troubleshooting

### 1. Check Job Status

To check the status of your submitted jobs, use the following command:

```bash
condor_status
```

### 2. Check Job Logs & Debug

First enable debugging in your submission script. To check the job logs, use the following command:

```bash
+DebugOutput = "debug.log"
condor_history -l <cluster_id>
```

Review the debug log for troubleshooting information.

## Additional Resources

- [Condor User Manual](https://abpcomputing.web.cern.ch/computing_resources/cernbatch/)
- [Condor Quick Start Guide](https://batchdocs.web.cern.ch/local/quick.html)