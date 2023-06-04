<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_get_change_token</td>
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

When you want to create, update, or delete AWS WAF objects, get a change
token and include the change token in the create, update, or delete
request. Change tokens ensure that your application doesn't submit
conflicting requests to AWS WAF.

Each create, update, or delete request must use a unique change token.
If your application submits a `get_change_token` request and then
submits a second `get_change_token` request before submitting a create,
update, or delete request, the second `get_change_token` request returns
the same value as the first `get_change_token` request.

When you use a change token in a create, update, or delete request, the
status of the change token changes to `PENDING`, which indicates that
AWS WAF is propagating the change to all AWS WAF servers. Use
`get_change_token_status` to determine the status of your change token.

### Usage

    waf_get_change_token()

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$get_change_token()

### Examples

    ## Not run: 
    # The following example returns a change token to use for a create, update
    # or delete operation.
    svc$get_change_token()

    ## End(Not run)
