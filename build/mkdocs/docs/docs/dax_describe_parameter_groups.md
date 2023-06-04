<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_describe_parameter_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of parameter group descriptions

### Description

Returns a list of parameter group descriptions. If a parameter group
name is specified, the list will contain only the descriptions for that
group.

### Usage

    dax_describe_parameter_groups(ParameterGroupNames, MaxResults,
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
id="dax_describe_parameter_groups_:_ParameterGroupNames">ParameterGroupNames</code></td>
<td><p>The names of the parameter groups.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_describe_parameter_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p>
<p>The value for <code>MaxResults</code> must be between 20 and
100.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_describe_parameter_groups_:_NextToken">NextToken</code></td>
<td><p>An optional token returned from a prior request. Use this token
for pagination of results from this action. If this parameter is
specified, the response includes only results beyond the token, up to
the value specified by <code>MaxResults</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ParameterGroups = list(
        list(
          ParameterGroupName = "string",
          Description = "string"
        )
      )
    )

### Request syntax

    svc$describe_parameter_groups(
      ParameterGroupNames = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
