<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_associate_web_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a web ACL with a regional application resource, to protect the resource

### Description

Associates a web ACL with a regional application resource, to protect
the resource. A regional application can be an Application Load Balancer
(ALB), an Amazon API Gateway REST API, an AppSync GraphQL API, an Amazon
Cognito user pool, an App Runner service, or an Amazon Web Services
Verified Access instance.

For Amazon CloudFront, don't use this call. Instead, use your CloudFront
distribution configuration. To associate a web ACL, in the CloudFront
call `UpdateDistribution`, set the web ACL ID to the Amazon Resource
Name (ARN) of the web ACL. For information, see
[UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)
in the *Amazon CloudFront Developer Guide*.

When you make changes to web ACLs or web ACL components, like rules and
rule groups, WAF propagates the changes everywhere that the web ACL and
its components are stored and used. Your changes are applied within
seconds, but there might be a brief period of inconsistency when the
changes have arrived in some places and not in others. So, for example,
if you change a rule action setting, the action might be the old action
in one area and the new action in another area. Or if you add an IP
address to an IP set used in a blocking rule, the new address might
briefly be blocked in one area while still allowed in another. This
temporary inconsistency can occur when you first associate a web ACL
with an Amazon Web Services resource and when you change a web ACL that
is already associated with a resource. Generally, any inconsistencies of
this type last only a few seconds.

### Usage

    wafv2_associate_web_acl(WebACLArn, ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafv2_associate_web_acl_:_WebACLArn">WebACLArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the web ACL that you
want to associate with the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_associate_web_acl_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
associate with the web ACL.</p>
<p>The ARN must be in one of the following formats:</p>
<ul>
<li><p>For an Application Load Balancer:
<code>arn:partition:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id </code></p></li>
<li><p>For an Amazon API Gateway REST API: <code
style="white-space: pre;">⁠arn:partition:apigateway:region::/restapis/api-id/stages/stage-name ⁠</code></p></li>
<li><p>For an AppSync GraphQL API:
<code>arn:partition:appsync:region:account-id:apis/GraphQLApiId </code></p></li>
<li><p>For an Amazon Cognito user pool:
<code>arn:partition:cognito-idp:region:account-id:userpool/user-pool-id </code></p></li>
<li><p>For an App Runner service:
<code>arn:partition:apprunner:region:account-id:service/apprunner-service-name/apprunner-service-id </code></p></li>
<li><p>For an Amazon Web Services Verified Access instance:
<code>arn:partition:ec2:region:account-id:verified-access-instance/instance-id </code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_web_acl(
      WebACLArn = "string",
      ResourceArn = "string"
    )
