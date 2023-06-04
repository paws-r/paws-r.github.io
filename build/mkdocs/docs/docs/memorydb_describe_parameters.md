<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the detailed parameter list for a particular parameter group

### Description

Returns the detailed parameter list for a particular parameter group.

### Usage

    memorydb_describe_parameters(ParameterGroupName, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_describe_parameters_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] he name of a specific parameter group to return
details for.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_parameters_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_parameters_:_NextToken">NextToken</code></td>
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
      Parameters = list(
        list(
          Name = "string",
          Value = "string",
          Description = "string",
          DataType = "string",
          AllowedValues = "string",
          MinimumEngineVersion = "string"
        )
      )
    )

### Request syntax

    svc$describe_parameters(
      ParameterGroupName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
