<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_list_tags_for_resource</td>
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

Retrieves the tags associated with the specified AWS resource. Tags are
key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the tag
key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each AWS resource, up to 50 tags for
a resource.

Tagging is only available through the API, SDKs, and CLI. You can't
manage or view tags through the AWS WAF Classic console. You can tag the
AWS resources that you manage through AWS WAF Classic: web ACLs, rule
groups, and rules.

### Usage

    waf_list_tags_for_resource(NextMarker, Limit, ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_list_tags_for_resource_:_NextMarker">NextMarker</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="waf_list_tags_for_resource_:_Limit">Limit</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="waf_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      TagInfoForResource = list(
        ResourceARN = "string",
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      NextMarker = "string",
      Limit = 123,
      ResourceARN = "string"
    )
