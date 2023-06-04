<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_delete_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Lambda function

### Description

Deletes a Lambda function. To delete a specific function version, use
the `Qualifier` parameter. Otherwise, all versions and aliases are
deleted.

To delete Lambda event source mappings that invoke a function, use
`delete_event_source_mapping`. For Amazon Web Services and resources
that invoke your function directly, delete the trigger in the service
where you originally configured it.

### Usage

    lambda_delete_function(FunctionName, Qualifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_delete_function_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function or version.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> – <code
style="white-space: pre;">⁠my-function⁠</code> (name-only), <code
style="white-space: pre;">⁠my-function:1⁠</code> (with version).</p></li>
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
<td><code id="lambda_delete_function_:_Qualifier">Qualifier</code></td>
<td><p>Specify a version to delete. You can't delete a version that an
alias references.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_function(
      FunctionName = "string",
      Qualifier = "string"
    )
