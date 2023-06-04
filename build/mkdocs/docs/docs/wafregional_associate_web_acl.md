<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_associate_web_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is AWS WAF Classic Regional documentation

### Description

This is **AWS WAF Classic Regional** documentation. For more
information, see [AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
[AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Associates a web ACL with a resource, either an application load
balancer or Amazon API Gateway stage.

### Usage

    wafregional_associate_web_acl(WebACLId, ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_associate_web_acl_:_WebACLId">WebACLId</code></td>
<td><p>[required] A unique identifier (ID) for the web ACL.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_associate_web_acl_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN (Amazon Resource Name) of the resource to be
protected, either an application load balancer or Amazon API Gateway
stage.</p>
<p>The ARN should be in one of the following formats:</p>
<ul>
<li><p>For an Application Load Balancer:
<code>arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id </code></p></li>
<li><p>For an Amazon API Gateway stage: <code
style="white-space: pre;">⁠arn:aws:apigateway:region::/restapis/api-id/stages/stage-name ⁠</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_web_acl(
      WebACLId = "string",
      ResourceArn = "string"
    )
