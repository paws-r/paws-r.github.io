<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_describe_domain_change_progress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the current blue/green deployment happening on an Amazon OpenSearch Service domain

### Description

Returns information about the current blue/green deployment happening on
an Amazon OpenSearch Service domain. For more information, see [Making
configuration changes in Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html).

### Usage

    opensearchservice_describe_domain_change_progress(DomainName, ChangeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_describe_domain_change_progress_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain to get progress information
for.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_describe_domain_change_progress_:_ChangeId">ChangeId</code></td>
<td><p>The specific change ID for which you want to get progress
information. If omitted, the request returns information about the most
recent configuration change.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeProgressStatus = list(
        ChangeId = "string",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        Status = "PENDING"|"PROCESSING"|"COMPLETED"|"FAILED",
        PendingProperties = list(
          "string"
        ),
        CompletedProperties = list(
          "string"
        ),
        TotalNumberOfStages = 123,
        ChangeProgressStages = list(
          list(
            Name = "string",
            Status = "string",
            Description = "string",
            LastUpdated = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_domain_change_progress(
      DomainName = "string",
      ChangeId = "string"
    )
