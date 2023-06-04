<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_put_runtime_management_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the runtime management configuration for a function's version

### Description

Sets the runtime management configuration for a function's version. For
more information, see [Runtime
updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).

### Usage

    lambda_put_runtime_management_config(FunctionName, Qualifier,
      UpdateRuntimeOn, RuntimeVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_put_runtime_management_config_:_FunctionName">FunctionName</code></td>
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
id="lambda_put_runtime_management_config_:_Qualifier">Qualifier</code></td>
<td><p>Specify a version of the function. This can be <code
style="white-space: pre;">⁠$LATEST⁠</code> or a published version number.
If no value is specified, the configuration for the <code
style="white-space: pre;">⁠$LATEST⁠</code> version is returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_put_runtime_management_config_:_UpdateRuntimeOn">UpdateRuntimeOn</code></td>
<td><p>[required] Specify the runtime update mode.</p>
<ul>
<li><p><strong>Auto (default)</strong> - Automatically update to the
most recent and secure runtime version using a <a
href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase">Two-phase
runtime version rollout</a>. This is the best choice for most customers
to ensure they always benefit from runtime updates.</p></li>
<li><p><strong>Function update</strong> - Lambda updates the runtime of
your function to the most recent and secure runtime version when you
update your function. This approach synchronizes runtime updates with
function deployments, giving you control over when runtime updates are
applied and allowing you to detect and mitigate rare runtime update
incompatibilities early. When using this setting, you need to regularly
update your functions to keep their runtime up-to-date.</p></li>
<li><p><strong>Manual</strong> - You specify a runtime version in your
function configuration. The function will use this runtime version
indefinitely. In the rare case where a new runtime version is
incompatible with an existing function, this allows you to roll back
your function to an earlier runtime version. For more information, see
<a
href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback">Roll
back a runtime version</a>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lambda_put_runtime_management_config_:_RuntimeVersionArn">RuntimeVersionArn</code></td>
<td><p>The ARN of the runtime version you want the function to use.</p>
<p>This is only required if you're using the <strong>Manual</strong>
runtime update mode.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpdateRuntimeOn = "Auto"|"Manual"|"FunctionUpdate",
      FunctionArn = "string",
      RuntimeVersionArn = "string"
    )

### Request syntax

    svc$put_runtime_management_config(
      FunctionName = "string",
      Qualifier = "string",
      UpdateRuntimeOn = "Auto"|"Manual"|"FunctionUpdate",
      RuntimeVersionArn = "string"
    )
