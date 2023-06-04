<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_list_fhir_datastores</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store status

### Description

Lists all FHIR Data Stores that are in the user’s account, regardless of
Data Store status.

### Usage

    healthlake_list_fhir_datastores(Filter, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_list_fhir_datastores_:_Filter">Filter</code></td>
<td><p>Lists all filters associated with a FHIR Data Store
request.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_list_fhir_datastores_:_NextToken">NextToken</code></td>
<td><p>Fetches the next page of Data Stores when results are
paginated.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_list_fhir_datastores_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of Data Stores returned in a single page of a
ListFHIRDatastoresRequest call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatastorePropertiesList = list(
        list(
          DatastoreId = "string",
          DatastoreArn = "string",
          DatastoreName = "string",
          DatastoreStatus = "CREATING"|"ACTIVE"|"DELETING"|"DELETED",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          DatastoreTypeVersion = "R4",
          DatastoreEndpoint = "string",
          SseConfiguration = list(
            KmsEncryptionConfig = list(
              CmkType = "CUSTOMER_MANAGED_KMS_KEY"|"AWS_OWNED_KMS_KEY",
              KmsKeyId = "string"
            )
          ),
          PreloadDataConfig = list(
            PreloadDataType = "SYNTHEA"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_fhir_datastores(
      Filter = list(
        DatastoreName = "string",
        DatastoreStatus = "CREATING"|"ACTIVE"|"DELETING"|"DELETED",
        CreatedBefore = as.POSIXct(
          "2015-01-01"
        ),
        CreatedAfter = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
