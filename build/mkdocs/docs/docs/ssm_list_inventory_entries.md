<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_inventory_entries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A list of inventory items returned by the request

### Description

A list of inventory items returned by the request.

### Usage

    ssm_list_inventory_entries(InstanceId, TypeName, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_inventory_entries_:_InstanceId">InstanceId</code></td>
<td><p>[required] The managed node ID for which you want inventory
information.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_inventory_entries_:_TypeName">TypeName</code></td>
<td><p>[required] The type of inventory item for which you want
information.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_list_inventory_entries_:_Filters">Filters</code></td>
<td><p>One or more filters. Use a filter to return a more specific list
of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_inventory_entries_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_inventory_entries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TypeName = "string",
      InstanceId = "string",
      SchemaVersion = "string",
      CaptureTime = "string",
      Entries = list(
        list(
          "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_inventory_entries(
      InstanceId = "string",
      TypeName = "string",
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          ),
          Type = "Equal"|"NotEqual"|"BeginWith"|"LessThan"|"GreaterThan"|"Exists"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
