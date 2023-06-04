<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_disassociate_service_quota_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables your quota request template

### Description

Disables your quota request template. After a template is disabled, the
quota increase requests in the template are not applied to new accounts
in your organization. Disabling a quota request template does not apply
its quota increase requests.

### Usage

    servicequotas_disassociate_service_quota_template()

### Value

An empty list.

### Request syntax

    svc$disassociate_service_quota_template()
