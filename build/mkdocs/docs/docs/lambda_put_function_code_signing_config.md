<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_put_function_code_signing_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the code signing configuration for the function

### Description

Update the code signing configuration for the function. Changes to the
code signing configuration take effect the next time a user tries to
deploy a code package to the function.

### Usage

    lambda_put_function_code_signing_config(CodeSigningConfigArn,
      FunctionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_put_function_code_signing_config_:_CodeSigningConfigArn">CodeSigningConfigArn</code></td>
<td><p>[required] The The Amazon Resource Name (ARN) of the code signing
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_put_function_code_signing_config_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> -
<code>MyFunction</code>.</p></li>
<li><p><strong>Function ARN</strong> - <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:MyFunction⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> - <code
style="white-space: pre;">⁠123456789012:function:MyFunction⁠</code>.</p></li>
</ul>
<p>The length constraint applies only to the full ARN. If you specify
only the function name, it is limited to 64 characters in
length.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeSigningConfigArn = "string",
      FunctionName = "string"
    )

### Request syntax

    svc$put_function_code_signing_config(
      CodeSigningConfigArn = "string",
      FunctionName = "string"
    )
