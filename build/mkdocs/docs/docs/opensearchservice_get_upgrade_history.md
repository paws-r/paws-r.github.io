<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_get_upgrade_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the complete history of the last 10 upgrades performed on an Amazon OpenSearch Service domain

### Description

Retrieves the complete history of the last 10 upgrades performed on an
Amazon OpenSearch Service domain.

### Usage

    opensearchservice_get_upgrade_history(DomainName, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_get_upgrade_history_:_DomainName">DomainName</code></td>
<td><p>[required] The name of an existing domain.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_get_upgrade_history_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_get_upgrade_history_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>get_upgrade_history</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent <code>get_upgrade_history</code>
operations, which returns results in the next page.</p></td>
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
