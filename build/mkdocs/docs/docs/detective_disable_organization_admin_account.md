<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_disable_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the Detective administrator account in the current Region

### Description

Removes the Detective administrator account in the current Region.
Deletes the organization behavior graph.

Can only be called by the organization management account.

Removing the Detective administrator account does not affect the
delegated administrator account for Detective in Organizations.

To remove the delegated administrator account in Organizations, use the
Organizations API. Removing the delegated administrator account also
removes the Detective administrator account in all Regions, except for
Regions where the Detective administrator account is the organization
management account.

### Usage

    detective_disable_organization_admin_account()

### Value

An empty list.
