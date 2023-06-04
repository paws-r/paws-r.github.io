<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_get_web_acl</td>
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

Returns the WebACL that is specified by `WebACLId`.

### Usage

    waf_get_web_acl(WebACLId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_get_web_acl_:_WebACLId">WebACLId</code></td>
<td><p>[required] The <code>WebACLId</code> of the WebACL that you want
to get. <code>WebACLId</code> is returned by <code>create_web_acl</code>
and by <code>list_web_ac_ls</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WebACL = list(
        WebACLId = "string",
        Name = "string",
        MetricName = "string",
        DefaultAction = list(
          Type = "BLOCK"|"ALLOW"|"COUNT"
        ),
        Rules = list(
          list(
            Priority = 123,
            RuleId = "string",
            Action = list(
              Type = "BLOCK"|"ALLOW"|"COUNT"
            ),
            OverrideAction = list(
              Type = "NONE"|"COUNT"
            ),
            Type = "REGULAR"|"RATE_BASED"|"GROUP",
            ExcludedRules = list(
              list(
                RuleId = "string"
              )
            )
          )
        ),
        WebACLArn = "string"
      )
    )

### Request syntax

    svc$get_web_acl(
      WebACLId = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the details of a web ACL with the ID
    # createwebacl-1472061481310.
    svc$get_web_acl(
      WebACLId = "createwebacl-1472061481310"
    )

    ## End(Not run)
