<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_invoke_with_response_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configure your Lambda functions to stream response payloads back to clients

### Description

Configure your Lambda functions to stream response payloads back to
clients. For more information, see [Configuring a Lambda function to
stream
responses](https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html).

This operation requires permission for the
[lambda:InvokeFunction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awslambda.html)
action. For details on how to set up permissions for cross-account
invocations, see [Granting function access to other
accounts](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).

### Usage

    lambda_invoke_with_response_stream(FunctionName, InvocationType,
      LogType, ClientContext, Qualifier, Payload)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_invoke_with_response_stream_:_FunctionName">FunctionName</code></td>
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
id="lambda_invoke_with_response_stream_:_InvocationType">InvocationType</code></td>
<td><p>Use one of the following options:</p>
<ul>
<li><p><code>RequestResponse</code> (default) – Invoke the function
synchronously. Keep the connection open until the function returns a
response or times out. The API operation response includes the function
response and additional data.</p></li>
<li><p><code>DryRun</code> – Validate parameter values and verify that
the IAM user or role has permission to invoke the function.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lambda_invoke_with_response_stream_:_LogType">LogType</code></td>
<td><p>Set to <code>Tail</code> to include the execution log in the
response. Applies to synchronously invoked functions only.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_invoke_with_response_stream_:_ClientContext">ClientContext</code></td>
<td><p>Up to 3,583 bytes of base64-encoded data about the invoking
client to pass to the function in the context object.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_invoke_with_response_stream_:_Qualifier">Qualifier</code></td>
<td><p>The alias name.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_invoke_with_response_stream_:_Payload">Payload</code></td>
<td><p>The JSON that you want to provide to your Lambda function as
input.</p>
<p>You can enter the JSON directly. For example, <code
style="white-space: pre;">⁠--payload '{ "key": "value" }'⁠</code>. You can
also specify a file path. For example, <code
style="white-space: pre;">⁠--payload file://payload.json⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StatusCode = 123,
      ExecutedVersion = "string",
      EventStream = list(
        PayloadChunk = list(
          Payload = raw
        ),
        InvokeComplete = list(
          ErrorCode = "string",
          ErrorDetails = "string",
          LogResult = "string"
        )
      ),
      ResponseStreamContentType = "string"
    )

### Request syntax

    svc$invoke_with_response_stream(
      FunctionName = "string",
      InvocationType = "RequestResponse"|"DryRun",
      LogType = "None"|"Tail",
      ClientContext = "string",
      Qualifier = "string",
      Payload = raw
    )
