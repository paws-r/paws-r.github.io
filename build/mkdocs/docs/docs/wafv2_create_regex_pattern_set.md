<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_create_regex_pattern_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a RegexPatternSet, which you reference in a RegexPatternSetReferenceStatement, to have WAF inspect a web request component for the specified patterns

### Description

Creates a RegexPatternSet, which you reference in a
RegexPatternSetReferenceStatement, to have WAF inspect a web request
component for the specified patterns.

### Usage

    wafv2_create_regex_pattern_set(Name, Scope, Description,
      RegularExpressionList, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_create_regex_pattern_set_:_Name">Name</code></td>
<td><p>[required] The name of the set. You cannot change the name after
you create the set.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_create_regex_pattern_set_:_Scope">Scope</code></td>
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
<tr class="odd">
<td><code
id="wafv2_create_regex_pattern_set_:_Description">Description</code></td>
<td><p>A description of the set that helps with identification.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_create_regex_pattern_set_:_RegularExpressionList">RegularExpressionList</code></td>
<td><p>[required] Array of regular expression strings.</p></td>
</tr>
<tr class="odd">
<td><code id="wafv2_create_regex_pattern_set_:_Tags">Tags</code></td>
<td><p>An array of key:value pairs to associate with the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Summary = list(
        Name = "string",
        Id = "string",
        Description = "string",
        LockToken = "string",
        ARN = "string"
      )
    )

### Request syntax

    svc$create_regex_pattern_set(
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      Description = "string",
      RegularExpressionList = list(
        list(
          RegexString = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
