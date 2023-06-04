<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_create_inference_scheduler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a scheduled inference

### Description

Creates a scheduled inference. Scheduling an inference is setting up a
continuous real-time inference plan to analyze new measurement data.
When setting up the schedule, you provide an S3 bucket location for the
input data, assign it a delimiter between separate entries in the data,
set an offset delay if desired, and set the frequency of inferencing.
You must also provide an S3 bucket location for the output data.

### Usage

    lookoutequipment_create_inference_scheduler(ModelName,
      InferenceSchedulerName, DataDelayOffsetInMinutes, DataUploadFrequency,
      DataInputConfiguration, DataOutputConfiguration, RoleArn,
      ServerSideKmsKeyId, ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_create_inference_scheduler_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the previously trained ML model being used
to create the inference scheduler.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_inference_scheduler_:_InferenceSchedulerName">InferenceSchedulerName</code></td>
<td><p>[required] The name of the inference scheduler being
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_inference_scheduler_:_DataDelayOffsetInMinutes">DataDelayOffsetInMinutes</code></td>
<td><p>The interval (in minutes) of planned delay at the start of each
inference segment. For example, if inference is set to run every ten
minutes, the delay is set to five minutes and the time is 09:08. The
inference scheduler will wake up at the configured interval (which,
without a delay configured, would be 09:10) plus the additional five
minute delay time (so 09:15) to check your Amazon S3 bucket. The delay
provides a buffer for you to upload data at the same frequency, so that
you don't have to stop and restart the scheduler when uploading new
data.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html">Understanding
the inference process</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_inference_scheduler_:_DataUploadFrequency">DataUploadFrequency</code></td>
<td><p>[required] How often data is uploaded to the source Amazon S3
bucket for the input data. The value chosen is the length of time
between data uploads. For instance, if you select 5 minutes, Amazon
Lookout for Equipment will upload the real-time data to the source
bucket once every 5 minutes. This frequency also determines how often
Amazon Lookout for Equipment runs inference on your data.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-inference-process.html">Understanding
the inference process</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_inference_scheduler_:_DataInputConfiguration">DataInputConfiguration</code></td>
<td><p>[required] Specifies configuration information for the input data
for the inference scheduler, including delimiter, format, and dataset
location.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_inference_scheduler_:_DataOutputConfiguration">DataOutputConfiguration</code></td>
<td><p>[required] Specifies configuration information for the output
results for the inference scheduler, including the S3 location for the
output.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_inference_scheduler_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of a role with
permission to access the data source being used for the
inference.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_inference_scheduler_:_ServerSideKmsKeyId">ServerSideKmsKeyId</code></td>
<td><p>Provides the identifier of the KMS key used to encrypt inference
scheduler data by Amazon Lookout for Equipment.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_inference_scheduler_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request. If you do not set
the client request token, Amazon Lookout for Equipment generates
one.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_inference_scheduler_:_Tags">Tags</code></td>
<td><p>Any tags associated with the inference scheduler.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InferenceSchedulerArn = "string",
      InferenceSchedulerName = "string",
      Status = "PENDING"|"RUNNING"|"STOPPING"|"STOPPED"
    )

### Request syntax

    svc$create_inference_scheduler(
      ModelName = "string",
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
      RoleArn = "string",
      ServerSideKmsKeyId = "string",
      ClientToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
