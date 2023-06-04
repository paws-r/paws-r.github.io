<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_inference_schedulers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of all inference schedulers currently available for your account

### Description

Retrieves a list of all inference schedulers currently available for
your account.

### Usage

    lookoutequipment_list_inference_schedulers(NextToken, MaxResults,
      InferenceSchedulerNameBeginsWith, ModelName, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_schedulers_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of inference schedulers.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_inference_schedulers_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of inference schedulers to
list.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_schedulers_:_InferenceSchedulerNameBeginsWith">InferenceSchedulerNameBeginsWith</code></td>
<td><p>The beginning of the name of the inference schedulers to be
listed.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_inference_schedulers_:_ModelName">ModelName</code></td>
<td><p>The name of the ML model used by the inference scheduler to be
listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_schedulers_:_Status">Status</code></td>
<td><p>Specifies the current status of the inference schedulers to
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      InferenceSchedulerSummaries = list(
        list(
          ModelName = "string",
          ModelArn = "string",
          InferenceSchedulerName = "string",
          InferenceSchedulerArn = "string",
          Status = "PENDING"|"RUNNING"|"STOPPING"|"STOPPED",
          DataDelayOffsetInMinutes = 123,
          DataUploadFrequency = "PT5M"|"PT10M"|"PT15M"|"PT30M"|"PT1H",
          LatestInferenceResult = "ANOMALOUS"|"NORMAL"
        )
      )
    )

### Request syntax

    svc$list_inference_schedulers(
      NextToken = "string",
      MaxResults = 123,
      InferenceSchedulerNameBeginsWith = "string",
      ModelName = "string",
      Status = "PENDING"|"RUNNING"|"STOPPING"|"STOPPED"
    )
