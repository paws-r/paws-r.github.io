<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_account_vdm_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update your Amazon SES account VDM attributes

### Description

Update your Amazon SES account VDM attributes.

You can execute this operation no more than once per second.

### Usage

    sesv2_put_account_vdm_attributes(VdmAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_account_vdm_attributes_:_VdmAttributes">VdmAttributes</code></td>
<td><p>[required] The VDM attributes that you wish to apply to your
Amazon SES account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_account_vdm_attributes(
      VdmAttributes = list(
        VdmEnabled = "ENABLED"|"DISABLED",
        DashboardAttributes = list(
          EngagementMetrics = "ENABLED"|"DISABLED"
        ),
        GuardianAttributes = list(
          OptimizedSharedDelivery = "ENABLED"|"DISABLED"
        )
      )
    )
