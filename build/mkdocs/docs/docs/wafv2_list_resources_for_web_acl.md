<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_list_resources_for_web_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves an array of the Amazon Resource Names (ARNs) for the regional resources that are associated with the specified web ACL

### Description

Retrieves an array of the Amazon Resource Names (ARNs) for the regional
resources that are associated with the specified web ACL. If you want
the list of Amazon CloudFront resources, use the CloudFront call
`ListDistributionsByWebACLId`.

### Usage

    wafv2_list_resources_for_web_acl(WebACLArn, ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_list_resources_for_web_acl_:_WebACLArn">WebACLArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the web
ACL.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_list_resources_for_web_acl_:_ResourceType">ResourceType</code></td>
<td><p>Used for web ACLs that are scoped for regional applications. A
regional application can be an Application Load Balancer (ALB), an
Amazon API Gateway REST API, an AppSync GraphQL API, an Amazon Cognito
user pool, an App Runner service, or an Amazon Web Services Verified
Access instance.</p>
<p>If you don't provide a resource type, the call uses the resource type
<code>APPLICATION_LOAD_BALANCER</code>.</p>
<p>Default: <code>APPLICATION_LOAD_BALANCER</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArns = list(
        "string"
      )
    )

### Request syntax

    svc$list_resources_for_web_acl(
      WebACLArn = "string",
      ResourceType = "APPLICATION_LOAD_BALANCER"|"API_GATEWAY"|"APPSYNC"|"COGNITO_USER_POOL"|"APP_RUNNER_SERVICE"|"VERIFIED_ACCESS_INSTANCE"
    )
