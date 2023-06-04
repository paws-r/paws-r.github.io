<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_get_ip_set</td>
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

Returns the IPSet that is specified by `IPSetId`.

### Usage

    wafregional_get_ip_set(IPSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafregional_get_ip_set_:_IPSetId">IPSetId</code></td>
<td><p>[required] The <code>IPSetId</code> of the IPSet that you want to
get. <code>IPSetId</code> is returned by <code>create_ip_set</code> and
by <code>list_ip_sets</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IPSet = list(
        IPSetId = "string",
        Name = "string",
        IPSetDescriptors = list(
          list(
            Type = "IPV4"|"IPV6",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_ip_set(
      IPSetId = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the details of an IP match set with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$get_ip_set(
      IPSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    )

    ## End(Not run)
