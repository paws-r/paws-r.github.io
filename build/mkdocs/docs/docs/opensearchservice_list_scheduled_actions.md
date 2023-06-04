<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_scheduled_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of configuration changes that are scheduled for a domain

### Description

Retrieves a list of configuration changes that are scheduled for a
domain. These changes can be [service software
updates](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html)
or [blue/green Auto-Tune
enhancements](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types).

### Usage

    opensearchservice_list_scheduled_actions(DomainName, MaxResults,
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
id="opensearchservice_list_scheduled_actions_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_list_scheduled_actions_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_list_scheduled_actions_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>list_scheduled_actions</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent <code>list_scheduled_actions</code>
operations, which returns results in the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduledActions = list(
        list(
          Id = "string",
          Type = "SERVICE_SOFTWARE_UPDATE"|"JVM_HEAP_SIZE_TUNING"|"JVM_YOUNG_GEN_TUNING",
          Severity = "HIGH"|"MEDIUM"|"LOW",
          ScheduledTime = 123,
          Description = "string",
          ScheduledBy = "CUSTOMER"|"SYSTEM",
          Status = "PENDING_UPDATE"|"IN_PROGRESS"|"FAILED"|"COMPLETED"|"NOT_ELIGIBLE"|"ELIGIBLE",
          Mandatory = TRUE|FALSE,
          Cancellable = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_scheduled_actions(
      DomainName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
