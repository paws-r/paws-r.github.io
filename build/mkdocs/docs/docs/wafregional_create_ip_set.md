<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_create_ip_set</td>
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

Creates an IPSet, which you use to specify which web requests that you
want to allow or block based on the IP addresses that the requests
originate from. For example, if you're receiving a lot of requests from
one or more individual IP addresses or one or more ranges of IP
addresses and you want to block the requests, you can create an `IPSet`
that contains those IP addresses and then configure AWS WAF to block the
requests.

To create and configure an `IPSet`, perform the following steps:

1.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `create_ip_set` request.

2.  Submit a `create_ip_set` request.

3.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_ip_set` request.

4.  Submit an `update_ip_set` request to specify the IP addresses that
    you want AWS WAF to watch for.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    wafregional_create_ip_set(Name, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="wafregional_create_ip_set_:_Name">Name</code></td>
<td><p>[required] A friendly name or description of the IPSet. You can't
change <code>Name</code> after you create the
<code>IPSet</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_create_ip_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
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
      ),
      ChangeToken = "string"
    )

### Request syntax

    svc$create_ip_set(
      Name = "string",
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example creates an IP match set named MyIPSetFriendlyName.
    svc$create_ip_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      Name = "MyIPSetFriendlyName"
    )

    ## End(Not run)
