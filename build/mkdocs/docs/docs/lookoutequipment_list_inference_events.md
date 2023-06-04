<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_inference_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all inference events that have been found for the specified inference scheduler

### Description

Lists all inference events that have been found for the specified
inference scheduler.

### Usage

    lookoutequipment_list_inference_events(NextToken, MaxResults,
      InferenceSchedulerName, IntervalStartTime, IntervalEndTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_events_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of inference events.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_inference_events_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of inference events to
list.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_events_:_InferenceSchedulerName">InferenceSchedulerName</code></td>
<td><p>[required] The name of the inference scheduler for the inference
events listed.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_inference_events_:_IntervalStartTime">IntervalStartTime</code></td>
<td><p>[required] Lookout for Equipment will return all the inference
events with an end time equal to or greater than the start time
given.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_inference_events_:_IntervalEndTime">IntervalEndTime</code></td>
<td><p>[required] Returns all the inference events with an end start
time equal to or greater than less than the end time given</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      InferenceEventSummaries = list(
        list(
          InferenceSchedulerArn = "string",
          InferenceSchedulerName = "string",
          EventStartTime = as.POSIXct(
            "2015-01-01"
          ),
          EventEndTime = as.POSIXct(
            "2015-01-01"
          ),
          Diagnostics = "string",
          EventDurationInSeconds = 123
        )
      )
    )

### Request syntax

    svc$list_inference_events(
      NextToken = "string",
      MaxResults = 123,
      InferenceSchedulerName = "string",
      IntervalStartTime = as.POSIXct(
        "2015-01-01"
      ),
      IntervalEndTime = as.POSIXct(
        "2015-01-01"
      )
    )
