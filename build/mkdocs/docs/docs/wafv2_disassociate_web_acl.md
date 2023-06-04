<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_disassociate_web_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the specified regional application resource from any existing web ACL association

### Description

Disassociates the specified regional application resource from any
existing web ACL association. A resource can have at most one web ACL
association. A regional application can be an Application Load Balancer
(ALB), an Amazon API Gateway REST API, an AppSync GraphQL API, an Amazon
Cognito user pool, an App Runner service, or an Amazon Web Services
Verified Access instance.

For Amazon CloudFront, don't use this call. Instead, use your CloudFront
distribution configuration. To disassociate a web ACL, provide an empty
web ACL ID in the CloudFront call `UpdateDistribution`. For information,
see
[UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)
in the *Amazon CloudFront API Reference*.

### Usage

    wafv2_disassociate_web_acl(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_disassociate_web_acl_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
disassociate from the web ACL.</p>
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

    svc$disassociate_web_acl(
      ResourceArn = "string"
    )
