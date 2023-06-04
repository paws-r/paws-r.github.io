<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_create_api_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an API key that contains a set of token domains

### Description

Creates an API key that contains a set of token domains.

API keys are required for the integration of the CAPTCHA API in your
JavaScript client applications. The API lets you customize the placement
and characteristics of the CAPTCHA puzzle for your end users. For more
information about the CAPTCHA JavaScript integration, see [WAF client
application
integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the *WAF Developer Guide*.

You can use a single key for up to 5 domains. After you generate a key,
you can copy it for use in your JavaScript integration.

### Usage

    wafv2_create_api_key(Scope, TokenDomains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_create_api_key_:_Scope">Scope</code></td>
<td><p>[required] Specifies whether this is for an Amazon CloudFront
distribution or for a regional application. A regional application can
be an Application Load Balancer (ALB), an Amazon API Gateway REST API,
an AppSync GraphQL API, an Amazon Cognito user pool, an App Runner
service, or an Amazon Web Services Verified Access instance.</p>
<p>To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:</p>
<ul>
<li><p>CLI - Specify the Region when you use the CloudFront scope:
<code>--scope=CLOUDFRONT --region=us-east-1</code>.</p></li>
<li><p>API and SDKs - For all calls, use the Region endpoint
us-east-1.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="wafv2_create_api_key_:_TokenDomains">TokenDomains</code></td>
<td><p>[required] The client application domains that you want to use
this API key for.</p>
<p>Example JSON: <code
style="white-space: pre;">⁠"TokenDomains": ["abc.com", "store.abc.com"]⁠</code></p>
<p>Public suffixes aren't allowed. For example, you can't use
<code>usa.gov</code> or <code>co.uk</code> as token domains.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      APIKey = "string"
    )

### Request syntax

    svc$create_api_key(
      Scope = "CLOUDFRONT"|"REGIONAL",
      TokenDomains = list(
        "string"
      )
    )
