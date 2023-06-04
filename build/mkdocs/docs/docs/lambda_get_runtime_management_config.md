<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_runtime_management_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the runtime management configuration for a function's version

### Description

Retrieves the runtime management configuration for a function's version.
If the runtime update mode is **Manual**, this includes the ARN of the
runtime version and the runtime update mode. If the runtime update mode
is **Auto** or **Function update**, this includes the runtime update
mode and `null` is returned for the ARN. For more information, see
[Runtime
updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).

### Usage

    lambda_get_runtime_management_config(FunctionName, Qualifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_get_runtime_management_config_:_FunctionName">FunctionName</code></td>
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
id="lambda_get_runtime_management_config_:_Qualifier">Qualifier</code></td>
<td><p>Specify a version of the function. This can be <code
style="white-space: pre;">⁠$LATEST⁠</code> or a published version number.
If no value is specified, the configuration for the <code
style="white-space: pre;">⁠$LATEST⁠</code> version is returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpdateRuntimeOn = "Auto"|"Manual"|"FunctionUpdate",
      RuntimeVersionArn = "string",
      FunctionArn = "string"
    )

### Request syntax

    svc$get_runtime_management_config(
      FunctionName = "string",
      Qualifier = "string"
    )
