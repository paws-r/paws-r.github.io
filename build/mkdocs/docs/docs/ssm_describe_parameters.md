<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about a parameter

### Description

Get information about a parameter.

Request results are returned on a best-effort basis. If you specify
`MaxResults` in the request, the response includes information up to the
limit specified. The number of items returned, however, can be between
zero and the value of `MaxResults`. If the service reaches an internal
limit while processing the results, it stops the operation and returns
the matching values up to that point and a `NextToken`. You can specify
the `NextToken` in a subsequent call to get the next set of results.

If you change the KMS key alias for the KMS key used to encrypt a
parameter, then you must also update the key alias the parameter uses to
reference KMS. Otherwise, `describe_parameters` retrieves whatever the
original key alias was referencing.

### Usage

    ssm_describe_parameters(Filters, ParameterFilters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_describe_parameters_:_Filters">Filters</code></td>
<td><p>This data type is deprecated. Instead, use
<code>ParameterFilters</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_parameters_:_ParameterFilters">ParameterFilters</code></td>
<td><p>Filters to limit the request results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_parameters_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_describe_parameters_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Parameters = list(
        list(
          Name = "string",
          Type = "String"|"StringList"|"SecureString",
          KeyId = "string",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedUser = "string",
          Description = "string",
          AllowedPattern = "string",
          Version = 123,
          Tier = "Standard"|"Advanced"|"Intelligent-Tiering",
          Policies = list(
            list(
              PolicyText = "string",
              PolicyType = "string",
              PolicyStatus = "string"
            )
          ),
          DataType = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_parameters(
      Filters = list(
        list(
          Key = "Name"|"Type"|"KeyId",
          Values = list(
            "string"
          )
        )
      ),
      ParameterFilters = list(
        list(
          Key = "string",
          Option = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
