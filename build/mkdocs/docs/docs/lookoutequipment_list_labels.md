<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of labels

### Description

Provides a list of labels.

### Usage

    lookoutequipment_list_labels(LabelGroupName, IntervalStartTime,
      IntervalEndTime, FaultCode, Equipment, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_labels_:_LabelGroupName">LabelGroupName</code></td>
<td><p>[required] Retruns the name of the label group.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_labels_:_IntervalStartTime">IntervalStartTime</code></td>
<td><p>Returns all the labels with a end time equal to or later than the
start time given.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_labels_:_IntervalEndTime">IntervalEndTime</code></td>
<td><p>Returns all labels with a start time earlier than the end time
given.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_labels_:_FaultCode">FaultCode</code></td>
<td><p>Returns labels with a particular fault code.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_labels_:_Equipment">Equipment</code></td>
<td><p>Lists the labels that pertain to a particular piece of
equipment.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_labels_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of label groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_labels_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of labels to list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      LabelSummaries = list(
        list(
          LabelGroupName = "string",
          LabelId = "string",
          LabelGroupArn = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          Rating = "ANOMALY"|"NO_ANOMALY"|"NEUTRAL",
          FaultCode = "string",
          Equipment = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_labels(
      LabelGroupName = "string",
      IntervalStartTime = as.POSIXct(
        "2015-01-01"
      ),
      IntervalEndTime = as.POSIXct(
        "2015-01-01"
      ),
      FaultCode = "string",
      Equipment = "string",
      NextToken = "string",
      MaxResults = 123
    )
