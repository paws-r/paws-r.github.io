<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_get_upgrade_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain

### Description

Retrieves the latest status of the last upgrade or upgrade eligibility
check that was performed on the domain.

### Usage

    elasticsearchservice_get_upgrade_status(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_get_upgrade_status_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpgradeStep = "PRE_UPGRADE_CHECK"|"SNAPSHOT"|"UPGRADE",
      StepStatus = "IN_PROGRESS"|"SUCCEEDED"|"SUCCEEDED_WITH_ISSUES"|"FAILED",
      UpgradeName = "string"
    )

### Request syntax

    svc$get_upgrade_status(
      DomainName = "string"
    )
