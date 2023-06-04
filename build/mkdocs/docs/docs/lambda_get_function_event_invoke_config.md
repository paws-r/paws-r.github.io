<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_function_event_invoke_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the configuration for asynchronous invocation for a function, version, or alias

### Description

Retrieves the configuration for asynchronous invocation for a function,
version, or alias.

To configure options for asynchronous invocation, use
`put_function_event_invoke_config`.

### Usage

    lambda_get_function_event_invoke_config(FunctionName, Qualifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_get_function_event_invoke_config_:_FunctionName">FunctionName</code></td>
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
id="lambda_get_function_event_invoke_config_:_Qualifier">Qualifier</code></td>
<td><p>A version number or alias name.</p></td>
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

    svc$get_function_event_invoke_config(
      FunctionName = "string",
      Qualifier = "string"
    )
