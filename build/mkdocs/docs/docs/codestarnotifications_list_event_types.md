<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_list_event_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the event types available for configuring notifications

### Description

Returns information about the event types available for configuring
notifications.

### Usage

    codestarnotifications_list_event_types(Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_list_event_types_:_Filters">Filters</code></td>
<td><p>The filters to use to return information by service or resource
type.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_list_event_types_:_NextToken">NextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_list_event_types_:_MaxResults">MaxResults</code></td>
<td><p>A non-negative integer used to limit the number of returned
results. The default number is 50. The maximum number of results that
can be returned is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventTypes = list(
        list(
          EventTypeId = "string",
          ServiceName = "string",
          EventTypeName = "string",
          ResourceType = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_event_types(
      Filters = list(
        list(
          Name = "RESOURCE_TYPE"|"SERVICE_NAME",
          Value = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
