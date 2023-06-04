<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_batch_segment_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the properties of a batch segment job including name, Amazon Resource Name (ARN), status, input and output configurations, and the ARN of the solution version used to generate segments

### Description

Gets the properties of a batch segment job including name, Amazon
Resource Name (ARN), status, input and output configurations, and the
ARN of the solution version used to generate segments.

### Usage

    personalize_describe_batch_segment_job(batchSegmentJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_batch_segment_job_:_batchSegmentJobArn">batchSegmentJobArn</code></td>
<td><p>[required] The ARN of the batch segment job to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      batchSegmentJob = list(
        jobName = "string",
        batchSegmentJobArn = "string",
        filterArn = "string",
        failureReason = "string",
        solutionVersionArn = "string",
        numResults = 123,
        jobInput = list(
          s3DataSource = list(
            path = "string",
            kmsKeyArn = "string"
          )
        ),
        jobOutput = list(
          s3DataDestination = list(
            path = "string",
            kmsKeyArn = "string"
          )
        ),
        roleArn = "string",
        status = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_batch_segment_job(
      batchSegmentJobArn = "string"
    )
