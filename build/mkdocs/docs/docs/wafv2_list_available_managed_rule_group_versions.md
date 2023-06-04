<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_list_available_managed_rule_group_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the available versions for the specified managed rule group

### Description

Returns a list of the available versions for the specified managed rule
group.

### Usage

    wafv2_list_available_managed_rule_group_versions(VendorName, Name,
      Scope, NextMarker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_list_available_managed_rule_group_versions_:_VendorName">VendorName</code></td>
<td><p>[required] The name of the managed rule group vendor. You use
this, along with the rule group name, to identify the rule
group.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_list_available_managed_rule_group_versions_:_Name">Name</code></td>
<td><p>[required] The name of the managed rule group. You use this,
along with the vendor name, to identify the rule group.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_list_available_managed_rule_group_versions_:_Scope">Scope</code></td>
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
id="wafv2_list_available_managed_rule_group_versions_:_NextMarker">NextMarker</code></td>
<td><p>When you request a list of objects with a <code>Limit</code>
setting, if the number of objects that are still available for retrieval
exceeds the limit, WAF returns a <code>NextMarker</code> value in the
response. To retrieve the next batch of objects, provide the marker from
the prior call in your next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_list_available_managed_rule_group_versions_:_Limit">Limit</code></td>
<td><p>The maximum number of objects that you want WAF to return for
this request. If more objects are available, in the response, WAF
provides a <code>NextMarker</code> value that you can use in a
subsequent call to get the next batch of objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      Versions = list(
        list(
          Name = "string",
          LastUpdateTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      CurrentDefaultVersion = "string"
    )

### Request syntax

    svc$list_available_managed_rule_group_versions(
      VendorName = "string",
      Name = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      NextMarker = "string",
      Limit = 123
    )
