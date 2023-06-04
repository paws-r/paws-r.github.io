<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_start_elasticsearch_service_software_update</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Schedules a service software update for an Amazon ES domain

### Description

Schedules a service software update for an Amazon ES domain.

### Usage

    elasticsearchservice_start_elasticsearch_service_software_update(
      DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_start_elasticsearch_service_software_update_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to update to the
latest service software.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceSoftwareOptions = list(
        CurrentVersion = "string",
        NewVersion = "string",
        UpdateAvailable = TRUE|FALSE,
        Cancellable = TRUE|FALSE,
        UpdateStatus = "PENDING_UPDATE"|"IN_PROGRESS"|"COMPLETED"|"NOT_ELIGIBLE"|"ELIGIBLE",
        Description = "string",
        AutomatedUpdateDate = as.POSIXct(
          "2015-01-01"
        ),
        OptionalDeployment = TRUE|FALSE
      )
    )

### Request syntax

    svc$start_elasticsearch_service_software_update(
      DomainName = "string"
    )
