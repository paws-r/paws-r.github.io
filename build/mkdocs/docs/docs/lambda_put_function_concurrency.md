<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_put_function_concurrency</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency level

### Description

Sets the maximum number of simultaneous executions for a function, and
reserves capacity for that concurrency level.

Concurrency settings apply to the function as a whole, including all
published versions and the unpublished version. Reserving concurrency
both ensures that your function has capacity to process the specified
number of events simultaneously, and prevents it from scaling beyond
that level. Use `get_function` to see the current setting for a
function.

Use `get_account_settings` to see your Regional concurrency limit. You
can reserve concurrency for as many functions as you like, as long as
you leave at least 100 simultaneous executions unreserved for functions
that aren't configured with a per-function limit. For more information,
see [Lambda function
scaling](https://docs.aws.amazon.com/lambda/latest/dg/lambda-concurrency.html).

### Usage

    lambda_put_function_concurrency(FunctionName,
      ReservedConcurrentExecutions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_put_function_concurrency_:_FunctionName">FunctionName</code></td>
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
<td><code
id="lambda_put_function_concurrency_:_ReservedConcurrentExecutions">ReservedConcurrentExecutions</code></td>
<td><p>[required] The number of simultaneous executions to reserve for
the function.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReservedConcurrentExecutions = 123
    )

### Request syntax

    svc$put_function_concurrency(
      FunctionName = "string",
      ReservedConcurrentExecutions = 123
    )
