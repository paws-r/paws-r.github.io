<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_list_related_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all related items for an incident record

### Description

List all related items for an incident record.

### Usage

    ssmincidents_list_related_items(incidentRecordArn, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_list_related_items_:_incidentRecordArn">incidentRecordArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident record
containing the listed related items.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_list_related_items_:_maxResults">maxResults</code></td>
<td><p>The maximum number of related items per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_list_related_items_:_nextToken">nextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      relatedItems = list(
        list(
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
        )
      )
    )

### Request syntax

    svc$list_related_items(
      incidentRecordArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
