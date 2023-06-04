<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_disable_security_hub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables Security Hub in your account only in the current Region

### Description

Disables Security Hub in your account only in the current Region. To
disable Security Hub in all Regions, you must submit one request per
Region where you have enabled Security Hub.

When you disable Security Hub for an administrator account, it doesn't
disable Security Hub for any associated member accounts.

When you disable Security Hub, your existing findings and insights and
any Security Hub configuration settings are deleted after 90 days and
cannot be recovered. Any standards that were enabled are disabled, and
your administrator and member account associations are removed.

If you want to save your existing findings, you must export them before
you disable Security Hub.

### Usage

    securityhub_disable_security_hub()

### Value

An empty list.

### Request syntax

    svc$disable_security_hub()

### Examples

    ## Not run: 
    # The following example deactivates Security Hub for the current account
    # and Region.
    svc$disable_security_hub()

    ## End(Not run)
