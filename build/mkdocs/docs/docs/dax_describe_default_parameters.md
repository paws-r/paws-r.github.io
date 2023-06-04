<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_describe_default_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the default system parameter information for the DAX caching software

### Description

Returns the default system parameter information for the DAX caching
software.

### Usage

    dax_describe_default_parameters(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dax_describe_default_parameters_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p>
<p>The value for <code>MaxResults</code> must be between 20 and
100.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_describe_default_parameters_:_NextToken">NextToken</code></td>
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
      Parameters = list(
        list(
          ParameterName = "string",
          ParameterType = "DEFAULT"|"NODE_TYPE_SPECIFIC",
          ParameterValue = "string",
          NodeTypeSpecificValues = list(
            list(
              NodeType = "string",
              Value = "string"
            )
          ),
          Description = "string",
          Source = "string",
          DataType = "string",
          AllowedValues = "string",
          IsModifiable = "TRUE"|"FALSE"|"CONDITIONAL",
          ChangeType = "IMMEDIATE"|"REQUIRES_REBOOT"
        )
      )
    )

### Request syntax

    svc$describe_default_parameters(
      MaxResults = 123,
      NextToken = "string"
    )
