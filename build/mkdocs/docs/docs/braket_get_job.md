<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_get_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified Amazon Braket job

### Description

Retrieves the specified Amazon Braket job.

### Usage

    braket_get_job(jobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_get_job_:_jobArn">jobArn</code></td>
<td><p>[required] The ARN of the job to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      algorithmSpecification = list(
        containerImage = list(
          uri = "string"
        ),
        scriptModeConfig = list(
          compressionType = "NONE"|"GZIP",
          entryPoint = "string",
          s3Uri = "string"
        )
      ),
      billableDuration = 123,
      checkpointConfig = list(
        localPath = "string",
        s3Uri = "string"
      ),
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      deviceConfig = list(
        device = "string"
      ),
      endedAt = as.POSIXct(
        "2015-01-01"
      ),
      events = list(
        list(
          eventType = "WAITING_FOR_PRIORITY"|"QUEUED_FOR_EXECUTION"|"STARTING_INSTANCE"|"DOWNLOADING_DATA"|"RUNNING"|"DEPRIORITIZED_DUE_TO_INACTIVITY"|"UPLOADING_RESULTS"|"COMPLETED"|"FAILED"|"MAX_RUNTIME_EXCEEDED"|"CANCELLED",
          message = "string",
          timeOfEvent = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      failureReason = "string",
      hyperParameters = list(
        "string"
      ),
      inputDataConfig = list(
        list(
          channelName = "string",
          contentType = "string",
          dataSource = list(
            s3DataSource = list(
              s3Uri = "string"
            )
          )
        )
      ),
      instanceConfig = list(
        instanceCount = 123,
        instanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge",
        volumeSizeInGb = 123
      ),
      jobArn = "string",
      jobName = "string",
      outputDataConfig = list(
        kmsKeyId = "string",
        s3Path = "string"
      ),
      roleArn = "string",
      startedAt = as.POSIXct(
        "2015-01-01"
      ),
      status = "QUEUED"|"RUNNING"|"COMPLETED"|"FAILED"|"CANCELLING"|"CANCELLED",
      stoppingCondition = list(
        maxRuntimeInSeconds = 123
      ),
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_job(
      jobArn = "string"
    )
