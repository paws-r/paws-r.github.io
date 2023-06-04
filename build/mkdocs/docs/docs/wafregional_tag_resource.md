<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is AWS WAF Classic documentation

### Description

This is **AWS WAF Classic** documentation. For more information, see
[AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
[AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Associates tags with the specified AWS resource. Tags are key:value
pairs that you can use to categorize and manage your resources, for
purposes like billing. For example, you might set the tag key to
"customer" and the value to the customer name or ID. You can specify one
or more tags to add to each AWS resource, up to 50 tags for a resource.

Tagging is only available through the API, SDKs, and CLI. You can't
manage or view tags through the AWS WAF Classic console. You can use
this action to tag the AWS resources that you manage through AWS WAF
Classic: web ACLs, rule groups, and rules.

### Usage

    wafregional_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code id="wafregional_tag_resource_:_Tags">Tags</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
