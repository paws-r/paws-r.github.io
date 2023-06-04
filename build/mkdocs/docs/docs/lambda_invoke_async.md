<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_invoke_async</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For asynchronous function invocation, use Invoke

### Description

For asynchronous function invocation, use `invoke`.

Invokes a function asynchronously.

### Usage

    lambda_invoke_async(FunctionName, InvokeArgs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_invoke_async_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> – <code
style="white-space: pre;">⁠my-function⁠</code>.</p></li>
<li><p><strong>Function ARN</strong> – <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:my-function⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> – <code
style="white-space: pre;">⁠123456789012:function:my-function⁠</code>.</p></li>
</ul>
<p>The length constraint applies only to the full ARN. If you specify
only the function name, it is limited to 64 characters in
length.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_invoke_async_:_InvokeArgs">InvokeArgs</code></td>
<td><p>[required] The JSON that you want to provide to your Lambda
function as input.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123
    )

### Request syntax

    svc$invoke_async(
      FunctionName = "string",
      InvokeArgs = raw
    )
