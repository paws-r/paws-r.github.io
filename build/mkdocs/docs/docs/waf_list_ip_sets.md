<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_list_ip_sets</td>
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

Returns an array of IPSetSummary objects in the response.

### Usage

    waf_list_ip_sets(NextMarker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_list_ip_sets_:_NextMarker">NextMarker</code></td>
<td><p>AWS WAF returns a <code>NextMarker</code> value in the response
that allows you to list another group of <code>IPSets</code>. For the
second and subsequent <code>list_ip_sets</code> requests, specify the
value of <code>NextMarker</code> from the previous response to get
information about another batch of <code>IPSets</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_list_ip_sets_:_Limit">Limit</code></td>
<td><p>Specifies the number of <code>IPSet</code> objects that you want
AWS WAF to return for this request. If you have more <code>IPSet</code>
objects than the number you specify for <code>Limit</code>, the response
includes a <code>NextMarker</code> value that you can use to get another
batch of <code>IPSet</code> objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      IPSets = list(
        list(
          IPSetId = "string",
          Name = "string"
        )
      )
    )

### Request syntax

    svc$list_ip_sets(
      NextMarker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # The following example returns an array of up to 100 IP match sets.
    svc$list_ip_sets(
      Limit = 100L
    )

    ## End(Not run)
