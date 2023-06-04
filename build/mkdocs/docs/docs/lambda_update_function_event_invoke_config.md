<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_update_function_event_invoke_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration for asynchronous invocation for a function, version, or alias

### Description

Updates the configuration for asynchronous invocation for a function,
version, or alias.

To configure options for asynchronous invocation, use
`put_function_event_invoke_config`.

### Usage

    lambda_update_function_event_invoke_config(FunctionName, Qualifier,
      MaximumRetryAttempts, MaximumEventAgeInSeconds, DestinationConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_update_function_event_invoke_config_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function, version, or
alias.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> - <code
style="white-space: pre;">⁠my-function⁠</code> (name-only), <code
style="white-space: pre;">⁠my-function:v1⁠</code> (with alias).</p></li>
<li><p><strong>Function ARN</strong> - <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:my-function⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> - <code
style="white-space: pre;">⁠123456789012:function:my-function⁠</code>.</p></li>
</ul>
<p>You can append a version number or alias to any of the formats. The
length constraint applies only to the full ARN. If you specify only the
function name, it is limited to 64 characters in length.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_event_invoke_config_:_Qualifier">Qualifier</code></td>
<td><p>A version number or alias name.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_event_invoke_config_:_MaximumRetryAttempts">MaximumRetryAttempts</code></td>
<td><p>The maximum number of times to retry when the function returns an
error.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_event_invoke_config_:_MaximumEventAgeInSeconds">MaximumEventAgeInSeconds</code></td>
<td><p>The maximum age of a request that Lambda sends to a function for
processing.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_event_invoke_config_:_DestinationConfig">DestinationConfig</code></td>
<td><p>A destination for events after they have been sent to a function
for processing.</p>
<p><strong>Destinations</strong></p>
<ul>
<li><p><strong>Function</strong> - The Amazon Resource Name (ARN) of a
Lambda function.</p></li>
<li><p><strong>Queue</strong> - The ARN of a standard SQS
queue.</p></li>
<li><p><strong>Topic</strong> - The ARN of a standard SNS
topic.</p></li>
<li><p><strong>Event Bus</strong> - The ARN of an Amazon EventBridge
event bus.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LastModified = as.POSIXct(
        "2015-01-01"
      ),
      FunctionArn = "string",
      MaximumRetryAttempts = 123,
      MaximumEventAgeInSeconds = 123,
      DestinationConfig = list(
        OnSuccess = list(
          Destination = "string"
        ),
        OnFailure = list(
          Destination = "string"
        )
      )
    )

### Request syntax

    svc$update_function_event_invoke_config(
      FunctionName = "string",
      Qualifier = "string",
      MaximumRetryAttempts = 123,
      MaximumEventAgeInSeconds = 123,
      DestinationConfig = list(
        OnSuccess = list(
          Destination = "string"
        ),
        OnFailure = list(
          Destination = "string"
        )
      )
    )
