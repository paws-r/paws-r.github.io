<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_describe_domain_change_progress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the current blue/green deployment happening on a domain, including a change ID, status, and progress stages

### Description

Returns information about the current blue/green deployment happening on
a domain, including a change ID, status, and progress stages.

### Usage

    elasticsearchservice_describe_domain_change_progress(DomainName,
      ChangeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_domain_change_progress_:_DomainName">DomainName</code></td>
<td><p>[required] The domain you want to get the progress information
about.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_describe_domain_change_progress_:_ChangeId">ChangeId</code></td>
<td><p>The specific change ID for which you want to get progress
information. This is an optional parameter. If omitted, the service
returns information about the most recent configuration change.</p></td>
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
