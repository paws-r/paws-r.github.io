<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_update_related_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add or remove related items from the related items tab of an incident record

### Description

Add or remove related items from the related items tab of an incident
record.

### Usage

    ssmincidents_update_related_items(clientToken, incidentRecordArn,
      relatedItemsUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_update_related_items_:_clientToken">clientToken</code></td>
<td><p>A token that ensures that a client calls the operation only once
with the specified details.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_related_items_:_incidentRecordArn">incidentRecordArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident record
that contains the related items that you update.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_related_items_:_relatedItemsUpdate">relatedItemsUpdate</code></td>
<td><p>[required] Details about the item that you are add to, or delete
from, an incident.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_related_items(
      clientToken = "string",
      incidentRecordArn = "string",
      relatedItemsUpdate = list(
        itemToAdd = list(
          generatedId = "string",
          identifier = list(
            type = "ANALYSIS"|"INCIDENT"|"METRIC"|"PARENT"|"ATTACHMENT"|"OTHER"|"AUTOMATION"|"INVOLVED_RESOURCE"|"TASK",
            value = list(
              arn = "string",
              metricDefinition = "string",
              pagerDutyIncidentDetail = list(
                autoResolve = TRUE|FALSE,
                id = "string",
                secretId = "string"
              ),
              url = "string"
            )
          ),
          title = "string"
        ),
        itemToRemove = list(
          type = "ANALYSIS"|"INCIDENT"|"METRIC"|"PARENT"|"ATTACHMENT"|"OTHER"|"AUTOMATION"|"INVOLVED_RESOURCE"|"TASK",
          value = list(
            arn = "string",
            metricDefinition = "string",
            pagerDutyIncidentDetail = list(
              autoResolve = TRUE|FALSE,
              id = "string",
              secretId = "string"
            ),
            url = "string"
          )
        )
      )
    )
