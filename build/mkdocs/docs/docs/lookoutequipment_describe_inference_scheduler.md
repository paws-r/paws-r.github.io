<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_describe_inference_scheduler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies information about the inference scheduler being used, including name, model, status, and associated metadata

### Description

Specifies information about the inference scheduler being used,
including name, model, status, and associated metadata

### Usage

    lookoutequipment_describe_inference_scheduler(InferenceSchedulerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_describe_inference_scheduler_:_InferenceSchedulerName">InferenceSchedulerName</code></td>
<td><p>[required] The name of the inference scheduler being
described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelArn = "string",
      ModelName = "string",
      InferenceSchedulerName = "string",
      InferenceSchedulerArn = "string",
      Status = "PENDING"|"RUNNING"|"STOPPING"|"STOPPED",
      DataDelayOffsetInMinutes = 123,
      DataUploadFrequency = "PT5M"|"PT10M"|"PT15M"|"PT30M"|"PT1H",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedAt = as.POSIXct(
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
      RoleArn = "string",
      ServerSideKmsKeyId = "string",
      LatestInferenceResult = "ANOMALOUS"|"NORMAL"
    )

### Request syntax

    svc$describe_inference_scheduler(
      InferenceSchedulerName = "string"
    )
