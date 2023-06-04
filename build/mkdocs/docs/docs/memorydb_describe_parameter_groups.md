<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_parameter_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of parameter group descriptions

### Description

Returns a list of parameter group descriptions. If a parameter group
name is specified, the list contains only the descriptions for that
group.

### Usage

    memorydb_describe_parameter_groups(ParameterGroupName, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_describe_parameter_groups_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>The name of a specific parameter group to return details
for.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_parameter_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_parameter_groups_:_NextToken">NextToken</code></td>
<td><p>An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ParameterGroups = list(
        list(
          Name = "string",
          Family = "string",
          Description = "string",
          ARN = "string"
        )
      )
    )

### Request syntax

    svc$describe_parameter_groups(
      ParameterGroupName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
