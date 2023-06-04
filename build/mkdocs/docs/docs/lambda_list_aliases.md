<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_list_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of aliases for a Lambda function

### Description

Returns a list of
[aliases](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
for a Lambda function.

### Usage

    lambda_list_aliases(FunctionName, FunctionVersion, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_list_aliases_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> -
<code>MyFunction</code>.</p></li>
<li><p><strong>Function ARN</strong> - <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:MyFunction⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> - <code
style="white-space: pre;">⁠123456789012:function:MyFunction⁠</code>.</p></li>
</ul>
<p>The length constraint applies only to the full ARN. If you specify
only the function name, it is limited to 64 characters in
length.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_list_aliases_:_FunctionVersion">FunctionVersion</code></td>
<td><p>Specify a function version to only list aliases that invoke that
version.</p></td>
</tr>
<tr class="odd">
<td><code id="lambda_list_aliases_:_Marker">Marker</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_list_aliases_:_MaxItems">MaxItems</code></td>
<td><p>Limit the number of aliases returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      Aliases = list(
        list(
          AliasArn = "string",
          Name = "string",
          FunctionVersion = "string",
          Description = "string",
          RoutingConfig = list(
            AdditionalVersionWeights = list(
              123.0
            )
          ),
          RevisionId = "string"
        )
      )
    )

### Request syntax

    svc$list_aliases(
      FunctionName = "string",
      FunctionVersion = "string",
      Marker = "string",
      MaxItems = 123
    )
