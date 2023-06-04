<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_get_upgrade_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the complete history of the last 10 upgrades that were performed on the domain

### Description

Retrieves the complete history of the last 10 upgrades that were
performed on the domain.

### Usage

    elasticsearchservice_get_upgrade_history(DomainName, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_get_upgrade_history_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_get_upgrade_history_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_get_upgrade_history_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpgradeHistories = list(
        list(
          UpgradeName = "string",
          StartTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          UpgradeStatus = "IN_PROGRESS"|"SUCCEEDED"|"SUCCEEDED_WITH_ISSUES"|"FAILED",
          StepsList = list(
            list(
              UpgradeStep = "PRE_UPGRADE_CHECK"|"SNAPSHOT"|"UPGRADE",
              UpgradeStepStatus = "IN_PROGRESS"|"SUCCEEDED"|"SUCCEEDED_WITH_ISSUES"|"FAILED",
              Issues = list(
                "string"
              ),
              ProgressPercent = 123.0
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_upgrade_history(
      DomainName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
