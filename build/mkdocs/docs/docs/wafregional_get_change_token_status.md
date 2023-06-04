<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_get_change_token_status</td>
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

Returns the status of a `ChangeToken` that you got by calling
`get_change_token`. `ChangeTokenStatus` is one of the following values:

-   `PROVISIONED`: You requested the change token by calling
    `get_change_token`, but you haven't used it yet in a call to create,
    update, or delete an AWS WAF object.

-   `PENDING`: AWS WAF is propagating the create, update, or delete
    request to all AWS WAF servers.

-   `INSYNC`: Propagation is complete.

### Usage

    wafregional_get_change_token_status(ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_get_change_token_status_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The change token for which you want to get the status.
This change token was previously returned in the
<code>get_change_token</code> response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeTokenStatus = "PROVISIONED"|"PENDING"|"INSYNC"
    )

### Request syntax

    svc$get_change_token_status(
      ChangeToken = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the status of a change token with the ID
    # abcd12f2-46da-4fdb-b8d5-fbd4c466928f.
    svc$get_change_token_status(
      ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    )

    ## End(Not run)
