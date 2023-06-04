<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_function_url_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about a Lambda function URL

### Description

Returns details about a Lambda function URL.

### Usage

    lambda_get_function_url_config(FunctionName, Qualifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_get_function_url_config_:_FunctionName">FunctionName</code></td>
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
id="lambda_get_function_url_config_:_Qualifier">Qualifier</code></td>
<td><p>The alias name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FunctionUrl = "string",
      FunctionArn = "string",
      AuthType = "NONE"|"AWS_IAM",
      Cors = list(
        AllowCredentials = TRUE|FALSE,
        AllowHeaders = list(
          "string"
        ),
        AllowMethods = list(
          "string"
        ),
        AllowOrigins = list(
          "string"
        ),
        ExposeHeaders = list(
          "string"
        ),
        MaxAge = 123
      ),
      CreationTime = "string",
      LastModifiedTime = "string",
      InvokeMode = "BUFFERED"|"RESPONSE_STREAM"
    )

### Request syntax

    svc$get_function_url_config(
      FunctionName = "string",
      Qualifier = "string"
    )
