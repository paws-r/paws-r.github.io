<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_inventory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Query inventory information

### Description

Query inventory information. This includes managed node status, such as
`Stopped` or `Terminated`.

### Usage

    ssm_get_inventory(Filters, Aggregators, ResultAttributes, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_inventory_:_Filters">Filters</code></td>
<td><p>One or more filters. Use a filter to return a more specific list
of results.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_get_inventory_:_Aggregators">Aggregators</code></td>
<td><p>Returns counts of inventory types based on one or more
expressions. For example, if you aggregate by using an expression that
uses the <code>AWS:InstanceInformation.PlatformType</code> type, you can
see a count of how many Windows and Linux managed nodes exist in your
inventoried fleet.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_inventory_:_ResultAttributes">ResultAttributes</code></td>
<td><p>The list of inventory item types to return.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_get_inventory_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_get_inventory_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entities = list(
        list(
          Id = "string",
          Data = list(
            list(
              TypeName = "string",
              SchemaVersion = "string",
              CaptureTime = "string",
              ContentHash = "string",
              Content = list(
                list(
                  "string"
                )
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_inventory(
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          ),
          Type = "Equal"|"NotEqual"|"BeginWith"|"LessThan"|"GreaterThan"|"Exists"
        )
      ),
      Aggregators = list(
        list(
          Expression = "string",
          Aggregators = list(),
          Groups = list(
            list(
              Name = "string",
              Filters = list(
                list(
                  Key = "string",
                  Values = list(
                    "string"
                  ),
                  Type = "Equal"|"NotEqual"|"BeginWith"|"LessThan"|"GreaterThan"|"Exists"
                )
              )
            )
          )
        )
      ),
      ResultAttributes = list(
        list(
          TypeName = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
