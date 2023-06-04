<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_parameters_by_path</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve information about one or more parameters in a specific hierarchy

### Description

Retrieve information about one or more parameters in a specific
hierarchy.

Request results are returned on a best-effort basis. If you specify
`MaxResults` in the request, the response includes information up to the
limit specified. The number of items returned, however, can be between
zero and the value of `MaxResults`. If the service reaches an internal
limit while processing the results, it stops the operation and returns
the matching values up to that point and a `NextToken`. You can specify
the `NextToken` in a subsequent call to get the next set of results.

### Usage

    ssm_get_parameters_by_path(Path, Recursive, ParameterFilters,
      WithDecryption, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_parameters_by_path_:_Path">Path</code></td>
<td><p>[required] The hierarchy for the parameter. Hierarchies start
with a forward slash (/). The hierarchy is the parameter name except the
last part of the parameter. For the API call to succeed, the last part
of the parameter name can't be in the path. A parameter name hierarchy
can have a maximum of 15 levels. Here is an example of a hierarchy:
<code
style="white-space: pre;">⁠/Finance/Prod/IAD/WinServ2016/license33 ⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_parameters_by_path_:_Recursive">Recursive</code></td>
<td><p>Retrieve all parameters within a hierarchy.</p>
<p>If a user has access to a path, then the user can access all levels
of that path. For example, if a user has permission to access path <code
style="white-space: pre;">⁠/a⁠</code>, then the user can also access <code
style="white-space: pre;">⁠/a/b⁠</code>. Even if a user has explicitly
been denied access in IAM for parameter <code
style="white-space: pre;">⁠/a/b⁠</code>, they can still call the
GetParametersByPath API operation recursively for <code
style="white-space: pre;">⁠/a⁠</code> and view <code
style="white-space: pre;">⁠/a/b⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_parameters_by_path_:_ParameterFilters">ParameterFilters</code></td>
<td><p>Filters to limit the request results.</p>
<p>The following <code>Key</code> values are supported for
<code>get_parameters_by_path</code>: <code>Type</code>,
<code>KeyId</code>, and <code>Label</code>.</p>
<p>The following <code>Key</code> values aren't supported for
<code>get_parameters_by_path</code>: <code>tag</code>,
<code>DataType</code>, <code>Name</code>, <code>Path</code>, and
<code>Tier</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_parameters_by_path_:_WithDecryption">WithDecryption</code></td>
<td><p>Retrieve all parameters in a hierarchy with their value
decrypted.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_parameters_by_path_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_parameters_by_path_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
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
          Value = "string",
          Version = 123,
          Selector = "string",
          SourceResult = "string",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          ARN = "string",
          DataType = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_parameters_by_path(
      Path = "string",
      Recursive = TRUE|FALSE,
      ParameterFilters = list(
        list(
          Key = "string",
          Option = "string",
          Values = list(
            "string"
          )
        )
      ),
      WithDecryption = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )
