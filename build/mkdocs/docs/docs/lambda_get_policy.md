<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the resource-based IAM policy for a function, version, or alias

### Description

Returns the [resource-based IAM
policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
for a function, version, or alias.

### Usage

    lambda_get_policy(FunctionName, Qualifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lambda_get_policy_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function, version, or
alias.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> – <code
style="white-space: pre;">⁠my-function⁠</code> (name-only), <code
style="white-space: pre;">⁠my-function:v1⁠</code> (with alias).</p></li>
<li><p><strong>Function ARN</strong> – <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:my-function⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> – <code
style="white-space: pre;">⁠123456789012:function:my-function⁠</code>.</p></li>
</ul>
<p>You can append a version number or alias to any of the formats. The
length constraint applies only to the full ARN. If you specify only the
function name, it is limited to 64 characters in length.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_get_policy_:_Qualifier">Qualifier</code></td>
<td><p>Specify a version or alias to get the policy for that
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string",
      RevisionId = "string"
    )

### Request syntax

    svc$get_policy(
      FunctionName = "string",
      Qualifier = "string"
    )
