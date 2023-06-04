<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_create_function_url_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Lambda function URL with the specified configuration parameters

### Description

Creates a Lambda function URL with the specified configuration
parameters. A function URL is a dedicated HTTP(S) endpoint that you can
use to invoke your function.

### Usage

    lambda_create_function_url_config(FunctionName, Qualifier, AuthType,
      Cors, InvokeMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_create_function_url_config_:_FunctionName">FunctionName</code></td>
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
id="lambda_create_function_url_config_:_Qualifier">Qualifier</code></td>
<td><p>The alias name.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_function_url_config_:_AuthType">AuthType</code></td>
<td><p>[required] The type of authentication that your function URL
uses. Set to <code>AWS_IAM</code> if you want to restrict access to
authenticated users only. Set to <code>NONE</code> if you want to bypass
IAM authentication to create a public endpoint. For more information,
see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security
and auth model for Lambda function URLs</a>.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_create_function_url_config_:_Cors">Cors</code></td>
<td><p>The <a
href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin
resource sharing (CORS)</a> settings for your function URL.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_function_url_config_:_InvokeMode">InvokeMode</code></td>
<td><p>Use one of the following options:</p>
<ul>
<li><p><code>BUFFERED</code> – This is the default option. Lambda
invokes your function using the <code>invoke</code> API operation.
Invocation results are available when the payload is complete. The
maximum payload size is 6 MB.</p></li>
<li><p><code>RESPONSE_STREAM</code> – Your function streams payload
results as they become available. Lambda invokes your function using the
<code>invoke_with_response_stream</code> API operation. The maximum
response payload size is 20 MB, however, you can <a
href="https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html">request
a quota increase</a>.</p></li>
</ul></td>
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
      InvokeMode = "BUFFERED"|"RESPONSE_STREAM"
    )

### Request syntax

    svc$create_function_url_config(
      FunctionName = "string",
      Qualifier = "string",
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
      InvokeMode = "BUFFERED"|"RESPONSE_STREAM"
    )
