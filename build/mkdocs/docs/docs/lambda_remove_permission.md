<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_remove_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Revokes function-use permission from an Amazon Web Service or another Amazon Web Services account

### Description

Revokes function-use permission from an Amazon Web Service or another
Amazon Web Services account. You can get the ID of the statement from
the output of `get_policy`.

### Usage

    lambda_remove_permission(FunctionName, StatementId, Qualifier,
      RevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_remove_permission_:_FunctionName">FunctionName</code></td>
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
<td><code
id="lambda_remove_permission_:_StatementId">StatementId</code></td>
<td><p>[required] Statement ID of the permission to remove.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_remove_permission_:_Qualifier">Qualifier</code></td>
<td><p>Specify a version or alias to remove permissions from a published
version of the function.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_remove_permission_:_RevisionId">RevisionId</code></td>
<td><p>Update the policy only if the revision ID matches the ID that's
specified. Use this option to avoid modifying a policy that has changed
since you last read it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_permission(
      FunctionName = "string",
      StatementId = "string",
      Qualifier = "string",
      RevisionId = "string"
    )
