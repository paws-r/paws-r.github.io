<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_inference_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all inference executions that have been performed by the specified inference scheduler

### Description

Lists all inference executions that have been performed by the specified
inference scheduler.

### Usage

    lookoutequipment_list_inference_executions(NextToken, MaxResults,
      InferenceSchedulerName, DataStartTimeAfter, DataEndTimeBefore, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_executions_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of inference executions.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_inference_executions_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of inference executions to
list.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_executions_:_InferenceSchedulerName">InferenceSchedulerName</code></td>
<td><p>[required] The name of the inference scheduler for the inference
execution listed.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_inference_executions_:_DataStartTimeAfter">DataStartTimeAfter</code></td>
<td><p>The time reference in the inferenced dataset after which Amazon
Lookout for Equipment started the inference execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_executions_:_DataEndTimeBefore">DataEndTimeBefore</code></td>
<td><p>The time reference in the inferenced dataset before which Amazon
Lookout for Equipment stopped the inference execution.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_inference_executions_:_Status">Status</code></td>
<td><p>The status of the inference execution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      InferenceExecutionSummaries = list(
        list(
          ModelName = "string",
          ModelArn = "string",
          InferenceSchedulerName = "string",
          InferenceSchedulerArn = "string",
          ScheduledStartTime = as.POSIXct(
            "2015-01-01"
          ),
          DataStartTime = as.POSIXct(
            "2015-01-01"
          ),
          DataEndTime = as.POSIXct(
            "2015-01-01"
          ),
          DataInputConfiguration = list(
            S3InputConfiguration = list(
              Bucket = "string",
              Prefix = "string"
            ),
            InputTimeZoneOffset = "string",
            InferenceInputNameConfiguration = list(
              TimestampFormat = "string",
              ComponentTimestampDelimiter = "string"
            )
          ),
          DataOutputConfiguration = list(
            S3OutputConfiguration = list(
              Bucket = "string",
              Prefix = "string"
            ),
            KmsKeyId = "string"
          ),
          CustomerResultObject = list(
            Bucket = "string",
            Key = "string"
          ),
          Status = "IN_PROGRESS"|"SUCCESS"|"FAILED",
          FailedReason = "string"
        )
      )
    )

### Request syntax

    svc$list_inference_executions(
      NextToken = "string",
      MaxResults = 123,
      InferenceSchedulerName = "string",
      DataStartTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      DataEndTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      Status = "IN_PROGRESS"|"SUCCESS"|"FAILED"
    )
