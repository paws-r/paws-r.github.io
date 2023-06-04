<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_update_ip_set</td>
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

Inserts or deletes IPSetDescriptor objects in an `IPSet`. For each
`IPSetDescriptor` object, you specify the following values:

-   Whether to insert or delete the object from the array. If you want
    to change an `IPSetDescriptor` object, you delete the existing
    object and add a new one.

-   The IP address version, `IPv4` or `IPv6`.

-   The IP address in CIDR notation, for example, `⁠192.0.2.0/24⁠` (for
    the range of IP addresses from `⁠192.0.2.0⁠` to `⁠192.0.2.255⁠`) or
    `⁠192.0.2.44/32⁠` (for the individual IP address `⁠192.0.2.44⁠`).

AWS WAF supports IPv4 address ranges: /8 and any range between /16
through /32. AWS WAF supports IPv6 address ranges: /24, /32, /48, /56,
/64, and /128. For more information about CIDR notation, see the
Wikipedia entry [Classless Inter-Domain
Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

IPv6 addresses can be represented using any of the following formats:

-   1111:0000:0000:0000:0000:0000:0000:0111/128

-   1111:0:0:0:0:0:0:0111/128

-   1111::0111/128

-   1111::111/128

You use an `IPSet` to specify which web requests you want to allow or
block based on the IP addresses that the requests originated from. For
example, if you're receiving a lot of requests from one or a small
number of IP addresses and you want to block the requests, you can
create an `IPSet` that specifies those IP addresses, and then configure
AWS WAF to block the requests.

To create and configure an `IPSet`, perform the following steps:

1.  Submit a `create_ip_set` request.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_ip_set` request.

3.  Submit an `update_ip_set` request to specify the IP addresses that
    you want AWS WAF to watch for.

When you update an `IPSet`, you specify the IP addresses that you want
to add and/or the IP addresses that you want to delete. If you want to
change an IP address, you delete the existing IP address and add the new
one.

You can insert a maximum of 1000 addresses in a single request.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_update_ip_set(IPSetId, ChangeToken, Updates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_update_ip_set_:_IPSetId">IPSetId</code></td>
<td><p>[required] The <code>IPSetId</code> of the IPSet that you want to
update. <code>IPSetId</code> is returned by <code>create_ip_set</code>
and by <code>list_ip_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_update_ip_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="waf_update_ip_set_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>IPSetUpdate</code> objects that you
want to insert into or delete from an IPSet. For more information, see
the applicable data types:</p>
<ul>
<li><p>IPSetUpdate: Contains <code>Action</code> and
<code>IPSetDescriptor</code></p></li>
<li><p>IPSetDescriptor: Contains <code>Type</code> and
<code>Value</code></p></li>
</ul>
<p>You can insert a maximum of 1000 addresses in a single
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$update_ip_set(
      IPSetId = "string",
      ChangeToken = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          IPSetDescriptor = list(
            Type = "IPV4"|"IPV6",
            Value = "string"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The following example deletes an IPSetDescriptor object in an IP match
    # set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$update_ip_set(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
      IPSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
      Updates = list(
        list(
          Action = "DELETE",
          IPSetDescriptor = list(
            Type = "IPV4",
            Value = "192.0.2.44/32"
          )
        )
      )
    )

    ## End(Not run)
