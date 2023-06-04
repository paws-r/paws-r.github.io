<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_update_service_access_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures the access rules that control access to the domain's document and search endpoints

### Description

Configures the access rules that control access to the domain's document
and search endpoints. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html"
target="_blank">Configuring Access for an Amazon CloudSearch Domain</a>.

### Usage

    cloudsearch_update_service_access_policies(DomainName, AccessPolicies)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_update_service_access_policies_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_update_service_access_policies_:_AccessPolicies">AccessPolicies</code></td>
<td><p>[required] The access rules you want to configure. These rules
replace any existing rules.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessPolicies = list(
        Options = "string",
        Status = list(
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateVersion = 123,
          State = "RequiresIndexDocuments"|"Processing"|"Active"|"FailedToValidate",
          PendingDeletion = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$update_service_access_policies(
      DomainName = "string",
      AccessPolicies = "string"
    )
