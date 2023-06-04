<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_inventory_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type

### Description

Return a list of inventory type names for the account, or return a list
of attribute names for a specific Inventory item type.

### Usage

    ssm_get_inventory_schema(TypeName, NextToken, MaxResults, Aggregator,
      SubType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_inventory_schema_:_TypeName">TypeName</code></td>
<td><p>The type of inventory item to return.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_inventory_schema_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_inventory_schema_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_inventory_schema_:_Aggregator">Aggregator</code></td>
<td><p>Returns inventory schemas that support aggregation. For example,
this call returns the <code>AWS:InstanceInformation</code> type, because
it supports aggregation based on the <code>PlatformName</code>,
<code>PlatformType</code>, and <code>PlatformVersion</code>
attributes.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_get_inventory_schema_:_SubType">SubType</code></td>
<td><p>Returns the sub-type schema for a specified inventory
type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Schemas = list(
        list(
          TypeName = "string",
          Version = "string",
          Attributes = list(
            list(
              Name = "string",
              DataType = "string"|"number"
            )
          ),
          DisplayName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_inventory_schema(
      TypeName = "string",
      NextToken = "string",
      MaxResults = 123,
      Aggregator = TRUE|FALSE,
      SubType = TRUE|FALSE
    )
