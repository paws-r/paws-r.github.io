<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_invoke</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Invokes a Lambda function

### Description

Invokes a Lambda function. You can invoke a function synchronously (and
wait for the response), or asynchronously. To invoke a function
asynchronously, set `InvocationType` to `Event`.

For [synchronous
invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html),
details about the function response, including errors, are included in
the response body and headers. For either invocation type, you can find
more information in the [execution
log](https://docs.aws.amazon.com/lambda/latest/dg/lambda-monitoring.html)
and
[trace](https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html).

When an error occurs, your function may be invoked multiple times. Retry
behavior varies by error type, client, event source, and invocation
type. For example, if you invoke a function asynchronously and it
returns an error, Lambda executes the function up to two more times. For
more information, see [Error handling and automatic retries in
Lambda](https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html).

For [asynchronous
invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html),
Lambda adds events to a queue before sending them to your function. If
your function does not have enough capacity to keep up with the queue,
events may be lost. Occasionally, your function may receive the same
event multiple times, even if no error occurs. To retain events that
were not processed, configure your function with a [dead-letter
queue](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq).

The status code in the API response doesn't reflect function errors.
Error codes are reserved for errors that prevent your function from
executing, such as permissions errors,
[quota](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html)
errors, or issues with your function's code and configuration. For
example, Lambda returns `TooManyRequestsException` if running the
function would cause you to exceed a concurrency limit at either the
account level (`ConcurrentInvocationLimitExceeded`) or function level
(`ReservedFunctionConcurrentInvocationLimitExceeded`).

For functions with a long timeout, your client might disconnect during
synchronous invocation while it waits for a response. Configure your
HTTP client, SDK, firewall, proxy, or operating system to allow for long
connections with timeout or keep-alive settings.

This operation requires permission for the
[lambda:InvokeFunction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awslambda.html)
action. For details on how to set up permissions for cross-account
invocations, see [Granting function access to other
accounts](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).

### Usage

    lambda_invoke(FunctionName, InvocationType, LogType, ClientContext,
      Payload, Qualifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lambda_invoke_:_FunctionName">FunctionName</code></td>
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
<td><code id="lambda_invoke_:_InvocationType">InvocationType</code></td>
<td><p>Choose from the following options.</p>
<ul>
<li><p><code>RequestResponse</code> (default) – Invoke the function
synchronously. Keep the connection open until the function returns a
response or times out. The API response includes the function response
and additional data.</p></li>
<li><p><code>Event</code> – Invoke the function asynchronously. Send
events that fail multiple times to the function's dead-letter queue (if
one is configured). The API response only includes a status
code.</p></li>
<li><p><code>DryRun</code> – Validate parameter values and verify that
the user or role has permission to invoke the function.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="lambda_invoke_:_LogType">LogType</code></td>
<td><p>Set to <code>Tail</code> to include the execution log in the
response. Applies to synchronously invoked functions only.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_invoke_:_ClientContext">ClientContext</code></td>
<td><p>Up to 3,583 bytes of base64-encoded data about the invoking
client to pass to the function in the context object.</p></td>
</tr>
<tr class="odd">
<td><code id="lambda_invoke_:_Payload">Payload</code></td>
<td><p>The JSON that you want to provide to your Lambda function as
input.</p>
<p>You can enter the JSON directly. For example, <code
style="white-space: pre;">⁠--payload '{ "key": "value" }'⁠</code>. You can
also specify a file path. For example, <code
style="white-space: pre;">⁠--payload file://payload.json⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_invoke_:_Qualifier">Qualifier</code></td>
<td><p>Specify a version or alias to invoke a published version of the
function.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StatusCode = 123,
      FunctionError = "string",
      LogResult = "string",
      Payload = raw,
      ExecutedVersion = "string"
    )

### Request syntax

    svc$invoke(
      FunctionName = "string",
      InvocationType = "Event"|"RequestResponse"|"DryRun",
      LogType = "None"|"Tail",
      ClientContext = "string",
      Payload = raw,
      Qualifier = "string"
    )
