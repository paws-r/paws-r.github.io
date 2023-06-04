<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about a Lambda function alias

### Description

Returns details about a Lambda function
[alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).

### Usage

    lambda_get_alias(FunctionName, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lambda_get_alias_:_FunctionName">FunctionName</code></td>
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
<td><code id="lambda_get_alias_:_Name">Name</code></td>
<td><p>[required] The name of the alias.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$get_alias(
      FunctionName = "string",
      Name = "string"
    )
