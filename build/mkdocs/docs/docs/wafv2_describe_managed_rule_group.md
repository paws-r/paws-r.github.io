<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_describe_managed_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides high-level information for a managed rule group, including descriptions of the rules

### Description

Provides high-level information for a managed rule group, including
descriptions of the rules.

### Usage

    wafv2_describe_managed_rule_group(VendorName, Name, Scope, VersionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_describe_managed_rule_group_:_VendorName">VendorName</code></td>
<td><p>[required] The name of the managed rule group vendor. You use
this, along with the rule group name, to identify the rule
group.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_describe_managed_rule_group_:_Name">Name</code></td>
<td><p>[required] The name of the managed rule group. You use this,
along with the vendor name, to identify the rule group.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_describe_managed_rule_group_:_Scope">Scope</code></td>
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
id="wafv2_describe_managed_rule_group_:_VersionName">VersionName</code></td>
<td><p>The version of the rule group. You can only use a version that is
not scheduled for expiration. If you don't provide this, WAF uses the
vendor's default version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VersionName = "string",
      SnsTopicArn = "string",
      Capacity = 123,
      Rules = list(
        list(
          Name = "string",
          Action = list(
            Block = list(
              CustomResponse = list(
                ResponseCode = 123,
                CustomResponseBodyKey = "string",
                ResponseHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Allow = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Count = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Captcha = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Challenge = list(
              CustomRequestHandling = list(
                InsertHeaders = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              )
            )
          )
        )
      ),
      LabelNamespace = "string",
      AvailableLabels = list(
        list(
          Name = "string"
        )
      ),
      ConsumedLabels = list(
        list(
          Name = "string"
        )
      )
    )

### Request syntax

    svc$describe_managed_rule_group(
      VendorName = "string",
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      VersionName = "string"
    )
