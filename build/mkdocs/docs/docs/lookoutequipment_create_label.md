<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_create_label</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a label for an event

### Description

Creates a label for an event.

### Usage

    lookoutequipment_create_label(LabelGroupName, StartTime, EndTime,
      Rating, FaultCode, Notes, Equipment, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_create_label_:_LabelGroupName">LabelGroupName</code></td>
<td><p>[required] The name of a group of labels.</p>
<p>Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_label_:_StartTime">StartTime</code></td>
<td><p>[required] The start time of the labeled event.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_label_:_EndTime">EndTime</code></td>
<td><p>[required] The end time of the labeled event.</p></td>
</tr>
<tr class="even">
<td><code id="lookoutequipment_create_label_:_Rating">Rating</code></td>
<td><p>[required] Indicates whether a labeled event represents an
anomaly.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_label_:_FaultCode">FaultCode</code></td>
<td><p>Provides additional information about the label. The fault code
must be defined in the FaultCodes attribute of the label group.</p>
<p>Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
<tr class="even">
<td><code id="lookoutequipment_create_label_:_Notes">Notes</code></td>
<td><p>Metadata providing additional information about the label.</p>
<p>Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_label_:_Equipment">Equipment</code></td>
<td><p>Indicates that a label pertains to a particular piece of
equipment.</p>
<p>Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_label_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request to create a label.
If you do not set the client request token, Lookout for Equipment
generates one.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LabelId = "string"
    )

### Request syntax

    svc$create_label(
      LabelGroupName = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Rating = "ANOMALY"|"NO_ANOMALY"|"NEUTRAL",
      FaultCode = "string",
      Notes = "string",
      Equipment = "string",
      ClientToken = "string"
    )
