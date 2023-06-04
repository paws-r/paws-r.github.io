<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_cancel_service_software_update</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a scheduled service software update for an Amazon OpenSearch Service domain

### Description

Cancels a scheduled service software update for an Amazon OpenSearch
Service domain. You can only perform this operation before the
`AutomatedUpdateDate` and when the domain's `UpdateStatus` is
`PENDING_UPDATE`. For more information, see [Service software updates in
Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).

### Usage

    opensearchservice_cancel_service_software_update(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_cancel_service_software_update_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the OpenSearch Service domain that you want to
cancel the service software update on.</p></td>
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

    svc$cancel_service_software_update(
      DomainName = "string"
    )
