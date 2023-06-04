<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_cancel_elasticsearch_service_software_update</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a scheduled service software update for an Amazon ES domain

### Description

Cancels a scheduled service software update for an Amazon ES domain. You
can only perform this operation before the `AutomatedUpdateDate` and
when the `UpdateStatus` is in the `PENDING_UPDATE` state.

### Usage

    elasticsearchservice_cancel_elasticsearch_service_software_update(
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
id="elasticsearchservice_cancel_elasticsearch_service_software_update_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to stop the
latest service software update on.</p></td>
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

    svc$cancel_elasticsearch_service_software_update(
      DomainName = "string"
    )
