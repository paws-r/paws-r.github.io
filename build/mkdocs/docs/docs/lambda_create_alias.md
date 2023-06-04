<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_create_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an alias for a Lambda function version

### Description

Creates an
[alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
for a Lambda function version. Use aliases to provide clients with a
function identifier that you can update to invoke a different version.

You can also map an alias to split invocation requests between two
versions. Use the `RoutingConfig` parameter to specify a second version
and the percentage of invocation requests that it receives.

### Usage

    lambda_create_alias(FunctionName, Name, FunctionVersion, Description,
      RoutingConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_create_alias_:_FunctionName">FunctionName</code></td>
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
<td><code id="lambda_create_alias_:_Name">Name</code></td>
<td><p>[required] The name of the alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_alias_:_FunctionVersion">FunctionVersion</code></td>
<td><p>[required] The function version that the alias invokes.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_create_alias_:_Description">Description</code></td>
<td><p>A description of the alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_alias_:_RoutingConfig">RoutingConfig</code></td>
<td><p>The <a
href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing">routing
configuration</a> of the alias.</p></td>
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

    svc$create_alias(
      FunctionName = "string",
      Name = "string",
      FunctionVersion = "string",
      Description = "string",
      RoutingConfig = list(
        AdditionalVersionWeights = list(
          123.0
        )
      )
    )
