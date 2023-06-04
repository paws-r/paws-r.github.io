<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_update_inference_scheduler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an inference scheduler

### Description

Updates an inference scheduler.

### Usage

    lookoutequipment_update_inference_scheduler(InferenceSchedulerName,
      DataDelayOffsetInMinutes, DataUploadFrequency, DataInputConfiguration,
      DataOutputConfiguration, RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_update_inference_scheduler_:_InferenceSchedulerName">InferenceSchedulerName</code></td>
<td><p>[required] The name of the inference scheduler to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_update_inference_scheduler_:_DataDelayOffsetInMinutes">DataDelayOffsetInMinutes</code></td>
<td><p>A period of time (in minutes) by which inference on the data is
delayed after the data starts. For instance, if you select an offset
delay time of five minutes, inference will not begin on the data until
the first data measurement after the five minute mark. For example, if
five minutes is selected, the inference scheduler will wake up at the
configured frequency with the additional five minute delay time to check
the customer S3 bucket. The customer can upload data at the same
frequency and they don't need to stop and restart the scheduler when
uploading new data.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_update_inference_scheduler_:_DataUploadFrequency">DataUploadFrequency</code></td>
<td><p>How often data is uploaded to the source S3 bucket for the input
data. The value chosen is the length of time between data uploads. For
instance, if you select 5 minutes, Amazon Lookout for Equipment will
upload the real-time data to the source bucket once every 5 minutes.
This frequency also determines how often Amazon Lookout for Equipment
starts a scheduled inference on your data. In this example, it starts
once every 5 minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_update_inference_scheduler_:_DataInputConfiguration">DataInputConfiguration</code></td>
<td><p>Specifies information for the input data for the inference
scheduler, including delimiter, format, and dataset location.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_update_inference_scheduler_:_DataOutputConfiguration">DataOutputConfiguration</code></td>
<td><p>Specifies information for the output results from the inference
scheduler, including the output S3 location.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_update_inference_scheduler_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a role with permission to
access the data source for the inference scheduler.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_inference_scheduler(
      InferenceSchedulerName = "string",
      DataDelayOffsetInMinutes = 123,
      DataUploadFrequency = "PT5M"|"PT10M"|"PT15M"|"PT30M"|"PT1H",
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
      RoleArn = "string"
    )
