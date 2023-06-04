<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_list_resources_for_web_acl</td>
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

Returns an array of resources associated with the specified web ACL.

### Usage

    wafregional_list_resources_for_web_acl(WebACLId, ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_list_resources_for_web_acl_:_WebACLId">WebACLId</code></td>
<td><p>[required] The unique identifier (ID) of the web ACL for which to
list the associated resources.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_list_resources_for_web_acl_:_ResourceType">ResourceType</code></td>
<td><p>The type of resource to list, either an application load balancer
or Amazon API Gateway.</p></td>
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
      WebACLId = "string",
      ResourceType = "APPLICATION_LOAD_BALANCER"|"API_GATEWAY"
    )
